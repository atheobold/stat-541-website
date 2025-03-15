
library(tidyverse)

astronauts <- read_csv(here::here("week-2",
                                  "data",
                                  "astronauts.csv")
                       )

countries <- read_csv(here::here("week-2",
                                 "data",
                                 "world_country_latitude_and_longitude.csv")
                      ) %>%
  select(latitude,
         longitude,
         country) %>%
  rename(Country = country)


astronauts %>%
  left_join(countries, by = "Country") %>%
  write_csv(file = "space.csv")
