library(tidyverse)
library(purrr)
library(rvest)
library(yaml)

page_to_bibtex_links <- function(x) {
    read_html(x) %>%
        html_nodes(xpath = "//div[contains(@class, 'rendering_researchoutput')]/h2[@class = 'title']/a[@class = 'link']") %>%
        html_attr("href")
}

bibtex_url_to_entry <- function(x) {
    read_html(x) %>%
        html_nodes(xpath = "//div[contains(@class, 'rendering_bibtex')]") %>%
        html_text(trim = TRUE)
}

outfile = "pubs.bib"


### (0) OVERWRITE EXISTING BIBS!!!
cat("", file = outfile, append = FALSE)

### (1) Get the URLs from the YAML file
team_members <- read_yaml("../_data/team_members.yml")

team_pures <- lapply(team_members, function(x) x["pure"])
team_pures <- unlist(team_pures)

### (1b) Amend these to feature just peer-reviewed stuff from the last five years
dat <- data.frame(base = team_pures)
dat <- merge(dat, data.frame(earliest_year = 2016),
             all = TRUE)
dat$url <- paste0(dat$base,
                  "?publicationYearsFrom=",
                  dat$earliest_year,
                  "&peerreview=true")

for (i in 1:nrow(dat)) {
    bibtex <- page_to_bibtex_links(dat$url[i])
    bibtex <- sub(".html", "/export.html", bibtex, fixed = TRUE)
### For each of these links
    ## Get the page and return the bibtex bit
    bibtex <- map(bibtex, bibtex_url_to_entry)
    ## Sink this to a file
    cat(unlist(bibtex), file = outfile, append = TRUE, sep = "\n\n")
}
