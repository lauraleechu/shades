```{r}
#### Preamble ####
# Purpose: Install the dependencies required for this project
# Prerequisites: You must also have the R language installed
# Author: Sebastian Rodriguez, Laura Lee-Chu, Iz Leitch
# Email: me@srod.ca
# Date: 16 March 2023
# GitHub: https://github.com/seb646/happiness-and-altruism

# Install required packages (you only need to do this once)
install.packages("lubridate")
install.packages("tidyverse")
install.packages("dplyr")
install.packages("knitr")
install.packages("janitor")
install.packages("scales")
install.packages("RColorBrewer")
install.packages("ggplot2")
install.packages("kableExtra")
install.packages("here")
install.packages("readr")
install.packages("foreign")
```

```{r}
install.packages("readstata13")

```


```{r}
#creating foundation shade colour palettes

#India shade range 
#
india_shades = list(
  twenty = c("#693720"),
  fifty = c("#b76f47", "#b07555", "#bc6d4e"), 
  sixty = c("#d0803b", "#bc8b63", "#c88f72", "#cb9070", "#eb893e", "#d0985f", "#d19676", "#c29979", "#c39d76", "#ce9c6a", "#cd9d77", "#cba167", "#b7a597", "#d69c74"),
  seventy = c("#ef9a5a", "#d7ac7a", "#dfab86", "#d4ac93", "#deaf91", "#d7b182", "#e5ae87", "#dcb297", "# ", "# ", "# ", "# ", "# "), 
  eighty = c("# ", "# ", "# ", "# ", "# ", "# ", "# ", "# ", "# ", "# ", "# ", "# ", "# ")
)

```

