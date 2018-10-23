library(dplyr)

## Exercise 1- Set-up Git ##

#' Set-up Git
#' Commit data
#' Commit R script
#' 
fish_data = read.csv("data/Gaeta_etal_CLC_data.csv")

## Excercise 2- First Solo Commit ##

# adds column for size category
fish_data_cat <- fish_data %>% 
  mutate(length_cat = ifelse(length > 300, "big", "small"))



