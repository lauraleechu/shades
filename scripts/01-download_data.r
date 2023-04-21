```{r}
#### Preamble ####
# Purpose: Download dataset
# Author: Laura Lee-Chu
# Date: 20 April 2023


#### Workspace set-up ####
library(tidyverse)
library(here)
library(readr)



# #import file and add to directory
rawshades <-
  read_csv(
    file =
      "https://raw.githubusercontent.com/the-pudding/data/master/makeup-shades/shades.csv",
    show_col_types = FALSE,
    skip = 0
    )

write.csv(
  x = rawshades,
  file = here::here("inputs/data/raw/rawshades.csv"))


#https://github.com/the-pudding/data/tree/master/makeup-shades
```