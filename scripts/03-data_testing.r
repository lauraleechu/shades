
```{r}
#### Preamble ####
# Purpose: Test data 
# Author: Laura Lee-Chu
# Date: 20 April 2023

#### Workspace set-up ####
library(tidyverse)
library(janitor)
library(here)
library(readr)

```

```{r}
#Testing Dataset
set.seed(853)

simulated_data <-
  tibble(
    "number_of_products" = 1:500,
    "product_brand" = sample(
      x = c(
        "Brand 1",
        "Brand 2",
        "Brand 3",
        "Brand 4",
        "Brand 5"
      ),
      size = 500,
      replace = TRUE
    )
  )

simulated_data

```





```{r}
#Model Testing 

#linearity assumption
plot(model$fitted.values, model$residuals)


#normality assumption
qqnorm(model$residuals)
qqline(model$residuals)


#homoscedasticity
plot(model$fitted.values, sqrt(abs(model$residuals)), pch=20, main="Scale-Location Plot")
abline(h = mean(sqrt(abs(model$residuals))), col="red")


```

