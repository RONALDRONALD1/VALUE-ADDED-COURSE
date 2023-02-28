
library(rvest)
library(dplyr)

link <- "https://www.91mobiles.com/top-10-mobiles-in-india"

web <- read_html(link)
name <- web %>% html_nodes(".name") %>% html_text()
View(name)
RAM <- web %>% html_nodes(".specs_li:nth-child(1) label:nth-child(5)") %>% html_text()
View(RAM)
price <- web %>% html_nodes(".price_float , .price_padding") %>% html_text()
View(price)
mobiles <- data.frame(name , RAM ,price)
View(mobiles)
write.csv(mobiles,"my mobiles data.csv")