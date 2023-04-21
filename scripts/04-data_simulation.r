#### Preamble ####
# Purpose: Simulate Data
# Author: Laura Lee-Chu
# Date: 20 April 2023



#conducting tests to check simulation


```{r}
simulated_data$product_brand |>
  unique() 

simulated_data$number_of_products |> min() == 37

simulated_data$number_of_products |> max() == 483

simulated_data$number_of_products |> class() == "numeric"
```




#confirmed working 