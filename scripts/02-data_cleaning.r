```{r}
#### Preamble ####
# Purpose: Import raw data and clean it 
# Author: Laura Lee-Chu
# Date: 20 April 2023


#Workspace set-up 
library(tidyverse)
library(dplyr)
library(here)
library(readr)
library(janitor)
```

```{r}
#Fetch and clean shade data by country and brand  
cleanshades <- readr::read_csv(here::here("inputs/data/raw/rawshades.csv"), show_col_types = FALSE) |>
  # Change column naming format
  select(brand, L, S, group, hex) |>
  filter(group > 5) |>
  mutate(group = str_replace(group, '6', 'Japan')) |>
  mutate(group = str_replace(group, '7', 'India'))

write_csv(
  x = cleanshades,
  file = here::here("inputs/data/clean/cleanshades.csv"),
)
```

```{r}

#Adding column to organize by shade range 
lightnessrange <- cleanshades |>
  mutate(light_range = cut(L, c(0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, Inf)))|>
  group_by(L) 
  
write_csv(
  x = lightnessrange,
  file = here::here("inputs/data/clean/lightnessrange.csv"),
)
```

```{r}

#classifying brands by international or domestic 
brand_origin <- lightnessrange |>  
  mutate(
    origin = if_else(
      condition = brand %in% c("NARS", "Dior", "Maybelline", "L'Oréal"), 
      true = "International", 
      false = "Domestic"
      ))

write_csv(
  x = brand_origin,
  file = here::here("inputs/data/clean/brand_origin.csv"),
)
```



