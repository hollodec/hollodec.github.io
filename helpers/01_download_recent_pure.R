###
### Purpose of this script: get recent publications from DEC members from PURE
###

library(xml2)
library(rvest)
library(tidyverse)
library(purrr)
library(reshape2)
library(yaml)
library(curl)
library(RefManageR)
library(bibtex)
library(ymlthis)

## Helper functions
## Get the description field
get_description <- function(d) {
    sel <- "(//description)[position() > 1]//text()"
    d %>%
        xml_nodes(xpath = sel) %>%
        xml_text()
}

get_doi <- function(d) {
    sel <- "//a[@href]"
    rv <- d %>%
        read_html() %>% 
        html_nodes(xpath = sel) %>%
        html_attr("href")
    rv <- rv[grep("doi.org", rv)]
    rv
}

get_title <- function(d) {
    d %>%
        read_html() %>%
        html_node(xpath = "//h2[@class = 'title']") %>%
        html_text()
}

get_properties <- function(d) {
    d <- d %>%
        read_html() %>%
        html_node(xpath = "(//table[@class = 'properties'])")
    if (inherits(d, "xml_missing")) {
        return(data.frame(X1 = NA, X2 = NA))
    } else {
        return(d %>%
               html_table())
    }
}

get_authors <- function(d) {

    retval <- d %>%
        read_html() %>%
        html_node(xpath = "//h2[@class = 'title']/following-sibling::text()[1]") %>%
        html_text()
    retval <- gsub("^, ", "", retval)
    retval <- gsub(" & $", "", retval)
    retval <- gsub("^ & ", "", retval)
    retval <- str_trim(retval)
    retval[which(retval == "")] <- NA
    retval
}


get_authors <- function(d) {

    retval <- d %>%
        read_html() %>%
        html_node(xpath = "//a[@rel = 'Person']") %>%
        html_text()
    retval <- gsub("^, ", "", retval)
    retval <- gsub(" & $", "", retval)
    retval <- gsub("^ & ", "", retval)
    retval <- str_trim(retval)
    retval[which(retval == "")] <- NA
    retval
}


### Read in the YAML from team_members.yml
team_members <- read_yaml("../_data/team_members.yml")

team_pures <- lapply(team_members, pluck, "pure")
team_pures <- unlist(team_pures)

team_pures <-sub(".html", ".rss", team_pures, fixed = TRUE)
### We have something of the form

### https://pure.royalholloway.ac.uk/portal/en/persons/nicholas-allen(f69c6bc8-318f-4578-961a-9a7d3cf07b21)/publications.html?publicationYearsFrom=2014&publicationYearsTo=2014&peerreview=true

### We want something of the form

### https://pure.royalholloway.ac.uk/portal/en/persons/nicholas-allen(f69c6bc8-318f-4578-961a-9a7d3cf07b21)/publications.rss?publicationYearsFrom=2014&peerreview=true&publicationYearsTo=2014

dat <- data.frame(base = team_pures)
dat <- merge(dat, data.frame(year = 2015:2022),
             all = TRUE)
dat$url <- paste0(dat$base,
                  "?publicationYearsFrom=",
                  dat$year,
                  "&publicationYearsTo=",
                  dat$year,
                  "&peerreview=true")

### We have to download these (without checking certificates)
### using wget
dat$local <- ""
for (i in 1:nrow(dat)) {
    url <- dat$url[i]
    d <- sub(".*persons/", "", url)
    d <- sub("\\(.*", "", d)
    d <- paste(d, dat$year[i], sep = "_")
    d <- paste0("savefiles/", d)
    download.file(url,
                  method = "wget",
                  destfile = d,
                  extra = " --no-check-certificate")
    dat$local[i] <- d
}


### Get DOIs from this

docs <- dat %>%
    mutate(doc = map(local, read_xml)) %>%     
    mutate(doc = map(doc, get_description)) %>%
    unnest(cols = doc) %>%
    mutate(doi = map(doc, get_doi)) %>%
    unnest(cols = doi)

### We know have a list of dois
foo <- list()
for (i in 1:nrow(docs)) {
foo[[i]] <- try(GetBibEntryWithDOI(docs$doi[i]))
}

### Just
bar <- foo[unlist(lapply(foo, function(x)inherits(x, "bibentry")))]
baz <- do.call("c", bar)
### Amend these to remove some html style shit
tidy_entries <- function(bibentry) {
    ### JOURNAL HANDLING
    ### Ampersands in journal titles
    journal <- bibentry$journal
    journal <- sub("{\\&}amp$\\mathsemicolon$",
                   "&",
                   journal,
                   fixed = TRUE)
    bibentry$journal <- journal

### TITLE HANDLING
    title <- bibentry$title

### HTML italics
    title <- sub("$\\less$i$\\greater$", "", title, fixed = TRUE)
    title <- sub("$\\less$/i$\\greater$", "", title, fixed = TRUE)

### Small caps
    title <- sub("$\\less$scp$\\greater$", "", title, fixed = TRUE)
    title <- sub("$\\less$/scp$\\greater$", "", title, fixed = TRUE)
### LaTex en dash?
    title <- sub("\\textendash", "", title, fixed = TRUE)

    bibentry$title <- title
        
    as.BibEntry(bibentry)

}

qux <- lapply(baz, tidy_entries)
qux <- do.call("c", qux)
WriteBib(qux, file = "../_bibliography/publications.bib")

### Also write out as YAML
yammeled <- bib2yml(path = "../_bibliography/publications.bib")
use_yml_file(.yml = yammeled,
             path = "../_data/biblio.yml")

### 
## if (file.exists("pure_data.rds")) {
##     docs <- readRDS("pure_data.rds")
## } else {

    
##     docs <- docs %>%
##         mutate(title = map_chr(doc, get_title),
##                authors = map_chr(doc, get_authors),
##                properties = map(doc, get_properties)) %>% 
##         dplyr::select(year, title, authors, properties)

##     docs <- docs %>%
##         mutate(authors = coalesce(authors, ""))
    
##     docs <- docs %>% 
##         unnest(cols = c(properties)) %>%
##         filter(!is.na(X1)) %>%
##         distinct(year, title, authors, X1, X2) %>% 
##         dcast(year + title + authors ~ X1, value.var = "X2")
    
##     saveRDS(docs, file = "pure_data.rds")
## }

