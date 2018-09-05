library(tidyverse)
source("load_data.R") 

all_data <- list.files("data", full.names = TRUE) %>% 
  map(~read_csv(., col_names = FALSE))

all_data[[1]] %>% 
  filter(!(X1 %in% c("Created", "Updated", "Revised")), 
         # These are NAs in all columns
         !is.na(X1))