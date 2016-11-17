# intro_to_r
Guest lecture for Mike Freeman's Intro to R class at the University of Washington Information School, March 4th 2016

library(ggplot2)
library(dplyr)

load('suicides.rdata')
all_suicides <- copy(suicides)

suicides <- suicides %>% 
  group_by(year, state, means)%>% 
  mutate(deaths = sum(deaths))