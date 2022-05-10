install.packages("tidyverse")
install.packages("ggplot2")
library("tidyverse")
library(ggplot2)
install.packages("dplyr")
library("dplyr")

install.packages("lubridate")
library("lubridate")

ggplot(data = mpg) +
  geom_point(mapping = aes(x = cyl, y=hwy))

flights_airtime <- mutate(flights, 
                          arr_time2 = (arr_time %/% 100 * 60 + arr_time %% 100) %% 1440,
                          dep_time2 = (dep_time %/% 100 * 60 + dep_time %% 100) %% 1440,
                          air_time_diff = air_time - arr_time2 + dep_time2)

flights_times <- mutate(flights, 
      dep_time_mins = (dep_time %/% 100 * 60 + dep_time %% 100) %% 1440,
      sched_dep_time_mins = (sched_dep_time %/% 100 *60 + 
      sched_dep_time %%100)) %% 1440

flights_airtime <- mutate(flights, 
arr_time2 = (arr_time %/% 100 * 60 + arr_time %% 100) %% 1440,
dep_time2 = (dep_time %/% 100 * 60 + dep_time %% 100) %% 1440,
air_time_diff = air_time - arr_time2 + dep_time2)