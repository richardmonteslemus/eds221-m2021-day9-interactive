library(tidyverse)
library(palmerpenguins)

# wrote a bunch of other code 

# finally at the end I want to plot my results 

ggplot(data = penguins_subset, x = flipped_length_mm, y = body_mass_g) + 
  geom_point()

# create data to include in our reprex
# subset penguins to just the data I need to reproduce the error 
penguins_subset <- penguins %>% 
  select(flipper_length_mm, body_mass_g) %>% 
  slice_head(n =5)

# creating a version of the data to include directly in reprex
datapasta::df_paste(penguins_subset)

## CREATE REPREX
# what we're actually going to share 

library(tidyverse)

penguins <- data.frame(
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L),
        body_mass_g = c(3750L, 3800L, 3250L, NA, 3450L)
)

ggplot(data = penguins, x = flipped_length_mm, y = body_mass_g) + 
  geom_point()


# Steps to generate reprex
# Copy code Command + C in r script and have it on clipboard
# Go to console and run reprex()
# Command + V anywhere to paste it out 


# REPREX OUTPUT

``` r
library(tidyverse)

penguins <- data.frame(
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L),
  body_mass_g = c(3750L, 3800L, 3250L, NA, 3450L)
)

ggplot(data = penguins, x = flipped_length_mm, y = body_mass_g) + 
  geom_point()
#> Error in `geom_point()`:
#> ! Problem while setting up geom.
#> ℹ Error occurred in the 1st layer.
#> Caused by error in `compute_geom_1()`:
#> ! `geom_point()` requires the following missing aesthetics: x and y.
```

<sup>Created on 2025-08-21 with [reprex v2.1.1](https://reprex.tidyverse.org)</sup>

  
  
## REPREX ERROR EXAMPLE 
  
cars_csv <- mtcars +
  mutate(kpg = mpg * 1.609)
  
## Sofia Reprex Example 

iris <- data.frame(
  Sepal.Length = c(5.1, 4.9, 4.7, 4.6, 5)
)

iris1 <- iris %>% 
  mutate(double_sepal = as.numeric(Sepal.Length * 2))
#> Error in parse(text = input): <text>:6:17: unexpected symbol
#> 5: iris1 <- iris %>% 
#> 6:   mutate(double sepal
#>                   



