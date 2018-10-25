
file.rename(from = "data/Gaeta_etal_CLC_data.csv", to = "data/Gaeta_etal_CLC_data_1.csv")
fish_data <- read.csv("data/Gaeta_etal_CLC_data1.csv")

library(dplyr)
fish_data_cat <- fish_data %>% 
  mutate(length_cat = ifelse(length > 300, "big", "small")) %>% 
  filter(scalelength > 1)
