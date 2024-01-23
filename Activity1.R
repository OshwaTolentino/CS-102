install.packages(c("rvest", "httr", "polite", "dplyr", "kableExtra"))

library(rvest)
library(httr)
library(dplyr)
library(polite)
library(kableExtra)

polite::use_manners(save_as = 'polite_scrape.R')
url <- 'https://www.amazon.com/s?k=basketball&crid=32J53K3U3PJLX&sprefix=basketba%2Caps%2C398&ref=nb_sb_noss_2'

cat("URL:", url, "\n")

session <- bow(url, user_agent = "Educational")
session


BrandDescription <- character(0)
Price <- character(0)
No_of_Reviews <- character(0)
Review_Stars <- character (0)

BrandDescription <- scrape(session) %>%
  html_nodes('span.a-size-base-plus.a-color-base.a-text-normal') %>%
  html_text()


BDesc <- data.frame(Branddescription)

BDesc <- slice(BDesc, 1:3)
print(BDesc)


Price <- scrape(session) %>%
  html_nodes('span.a-price-whole') %>%
  html_text()

Prc <- data.frame(Price)

Prc <- slice(Prc, 1:3)
print(Prc)


No_of_reviews <- scrape(session) %>%
  html_nodes('span.a-size-base-plus a-color-base a-text-normal') %>%
  html_text()

rev <- data.frame(No_of_reviews)

rev <- slice(rev, 1:3)
print(rev)


Review_Stars <- scrape(session) %>%
  html_nodes('span.a-size-base-plus a-color-base a-text-normal') %>%
  html_text()

stars <- data.frame(Review_Stars)

stars <- slice(stars, 1:3)
print(stars)