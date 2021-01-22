###
### Purpose of this script: get recent publications from DEC members from PURE
###

library(xml2)
library(rvest)
library(tidyverse)
library(purrr)
library(reshape2)
library(yaml)

## Helper functions
## Get the description field
get_description <- function(d) {
    sel <- "(//description)[position() > 1]//text()"
    d %>%
        xml_nodes(xpath = sel) %>%
        xml_text()
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
dat <- merge(dat, data.frame(year = 2014:2021),
             all = TRUE)
dat$url <- paste0(dat$base,
                  "?publicationYearsFrom=",
                  dat$year,
                  "&publicationYearsTo=",
                  dat$year,
                  "&peerreview=true")

if (file.exists("pure_data.rds")) {
    docs <- readRDS("pure_data.rds")
} else {
    docs <- dat %>%
        mutate(doc = map(url, read_xml)) %>%     
        mutate(doc = map(doc, get_description)) %>%
        unnest(cols = doc)
    
    docs <- docs %>%
        mutate(title = map_chr(doc, get_title),
               authors = map_chr(doc, get_authors),
               properties = map(doc, get_properties)) %>% 
        dplyr::select(year, title, authors, properties) %>% 
        unnest(cols = c(properties)) %>%
        filter(!is.na(X1)) %>% 
        dcast(year + title + authors ~ X1, value.var = "X2")
    
    saveRDS(docs, file = "pure_data.rds")
}
t
