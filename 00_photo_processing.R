library(tidyverse)
library(readxl)

sdat <- read_xlsx("data/pracdatasheet.xlsx", sheet = "Species")

splists <- sdat %>% select(Site, FullName) %>% unique() %>% 
  filter(Site == "renosterveld") %>% arrange(FullName)

splists_st <- sdat %>% select(Point, Site, FullName) %>% unique()
