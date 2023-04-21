
```{r}
#### Workspace set-up ####
library(tidyverse)
library(janitor)
library(here)
library(readr)

```

```{r}
#Testing Dataset


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

