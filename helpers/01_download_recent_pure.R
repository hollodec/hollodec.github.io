
###
### Purpose of this script: get recent publications from DEC members from PURE
### Revision after PURE formatting changed

library(xml2)
library(rvest)
library(tidyverse)
library(purrr)
library(yaml)
library(bib2df)
library(stringr)
library(RefManageR)
here::i_am("helpers/01_download_recent_pure.R")

### Programmatically
### Read in the YAML
### Just get the PURE URL
team_members <- read_yaml(here::here("_data", "team_members.yml"))

team_pures <- lapply(team_members, pluck, "pure")
team_pures <- unlist(team_pures)

get_items <- function(url) {
    page <- read_html(paste0(url, "/publications/?format=rss"))
    sel <- "//item/guid"
    links <- html_elements(page, xpath = sel) |> html_text()
    return(links)
}

items <- lapply(team_pures, get_items)

### Get
###
cat("---\n---\nReferences\n========\n\n",
    file = here::here("_bibliography", "references.bib"),
    append = FALSE)

get_bibtex <- function(url) {
    page <- read_html(url)
    container <- html_elements(page, xpath = "//div[@id='cite-BIBTEX']/div")
    divs <- html_elements(container, xpath = "./div")
    text <- unlist(lapply(divs, html_text))
    text <- paste(text, collapse = "\n")
    text <- paste(text, "\n}\n\n")
    cat(text,
        file = here::here("_bibliography", "references.bib"),
        append = TRUE)
    return(TRUE)
}

bibtex <- lapply(items, function(x) lapply(x, get_bibtex))
## setwd(here::here("_bibliography"))
## system("pandoc --from=biblatex --to=csljson publications.bib -o publications.json")
## system("yq -P -oy publications.json > ../_data/biblio.yml")

### Reads in things fine, but can't convert

## alt_df <- RefManageR::ReadBib(here::here("_bibliography", "test.bib"))
## alt_df <- knitr::read_bib(here::here("_bibliography", "publications.bib"))
## bib_df <- bib2df(file = here::here("_bibliography", "publications.bib"))
## res <- ymlthis::bib2yml(path = here::here("_bibliography", "publications.bib"))

## ### Handle accents
## accents <- tribble(~unicode, ~bibtex,
##                    "é", "\\'{e}",
##                    "ñ", "\\~{n}",
##                    "ö", '\\"{o}',
##                    "ö", '\\"o',
##                    "ü", '\\"u',
##                    "ü", '\\"{u}',
##                    "å", "\\aa}",
##                    "í", "\\'\\i")

## repl <- accents$unicode
## repl <- setNames(repl, accents$bibtex)

## bib_df$TITLE <- stringr::str_replace_all(bib_df$TITLE,
##                                          fixed(repl))

## bib_df$AUTHOR <- stringr::str_replace_all(bib_df$AUTHOR,
##                                          fixed(repl))
                   
## bib_df$TITLE <- gsub("{\\textquotedblleft}", "'", bib_df$TITLE, fixed = TRUE)
## bib_df$TITLE <- gsub("{\\textquotedblright}", "'", bib_df$TITLE, fixed = TRUE)
## bib_df$TITLE <- gsub("{\\textquotesingle}", "'", bib_df$TITLE, fixed = TRUE)
## bib_df$TITLE <- gsub("{\\textquoteright}", "'", bib_df$TITLE, fixed = TRUE)
## bib_df$TITLE <- gsub('{\"}', "'", bib_df$TITLE, fixed = TRUE)
## bib_df$TITLE <- gsub("textquoteleft}", "", bib_df$TITLE, fixed = TRUE)
## bib_df$TITLE <- gsub("textquoteleft}", "", bib_df$TITLE, fixed = TRUE)
## bib_df$TITLE <- gsub("{}", "-", bib_df$TITLE, fixed = TRUE)
## bib_df$TITLE <- gsub("{", "", bib_df$TITLE, fixed = TRUE)
## bib_df$TITLE <- gsub("}", "", bib_df$TITLE, fixed = TRUE)

## bib_df$AUTHOR <- sapply(bib_df$AUTHOR, function(x) {
##     text <- paste(as.vector(unlist(x)), collapse = ", ")
##     text <- gsub("{", "", text, fixed = TRUE)
##     text <- gsub("}", "", text, fixed = TRUE)
##     ## if it's all caps
##     if (text == toupper(text)) {
##         ### warning("title-casing")
##         text <- tools::toTitleCase(tolower(text))
##     }
    
##     text
## }) 

## bib_df$PAGES <- coalesce(bib_df$PAGES, "")
## bib_df$VOLUME <- coalesce(bib_df$VOLUME, "")

## ### Get the alternates
## ## res <- roadoi::oadoi_fetch(dois = bib_df$DOI,
## ##                            email = "chris.hanretty@rhul.ac.uk", .flatten = TRUE)

## ## res2 <- res %>%
## ##     group_by(doi) %>%
## ##     filter(is_best) %>%
## ##     dplyr::select(doi, UNGATED = url)

## ## bib_df <- merge(bib_df, res2,
## ##                 by.x = "DOI",
## ##                 by.y = "doi",
## ##                 all.x = TRUE,
## ##                 all.y = FALSE)

## bib_df <- bib_df %>%
##     dplyr::select(-BIBTEXKEY) %>% 
##     distinct()


## writeLines(as.yaml(bib_df, column.major = FALSE),
##            con = here::here("_data", "biblio.yml"))


