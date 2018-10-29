library(dplyr)
library(ggplot2)

## Exercise 1- Set-up Git ##

#' Set-up Git
#' Commit data
#' Commit R script
#' 
#' Excercise 4 rename file
file.rename(from = "data/Gaeta_etal_CLC_data.csv", to = "data/Gaeta_etal_CLC_data_1.csv")
fish_data <- read.csv("data/Gaeta_etal_CLC_data1.csv")

## Excercise 2 and 3 ##

#' organizes and filters the fish data
#' 
fish_data_cat <- fish_data %>% 
  mutate(length_cat = ifelse(length > 300, "big", "small"))%>% 
  filter(scalelength > 1)

## Excercise 5 ##
ggplot(fish_data_cat, aes(x = length, y = scalelength, color = lakeid)) +
  geom_point()

## Excercise 6 ##
scale_hist_by_length <- ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram(bins = 80)

ggsave("scale_hist_by_length.jpg")
