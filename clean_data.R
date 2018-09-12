library(tidyverse)
source("load_data.R") 

# Read in files 
all_data <- list.files("data", full.names = TRUE) %>% 
  map(~read_csv(., col_names = FALSE))

test_func <- function(d) {
  # Removes empty rows at the top and renames column names
  d <- d %>% 
    filter(!is.na(X3)) 
  # Rename headings using first row
  names(d) <- as.character(d[1, ])
  # Remove first row
  d %>% filter(row_number() != 1)
}

all_data %>% map(test_func)