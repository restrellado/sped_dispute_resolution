library(tidyverse)

if (file.exists("data/2006-07.csv") == FALSE) {
  dl_files <- function(name) {
    download.file(
      paste0("https://www2.ed.gov/programs/osepidea/618-data/state-level-data-files/part-b-data/dispute-resolution/bdispres", 
             name, ".csv"), 
      paste0("data/", name, ".csv")
    )
  }
  
  file_years <- c("2015-16", "2014-15", "2013-14", "2012-13", "2011-12", 
                  "2010-11", "2009-10", "2008-09", "2007-08", "2006-07")
  
  file_years %>% walk(dl_files)
}