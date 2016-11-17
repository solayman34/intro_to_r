library(ggplot2)
library(dplyr)

load('suicides.rdata')
all_suicides <- copy(suicides)

suicides <- suicides %>% 
  group_by(year, state, means)%>% 
  mutate(deaths = sum(deaths))