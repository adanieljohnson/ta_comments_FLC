# Purpose: Test Our Cleaned GSS Data Set To Ensure Proper Import


# libraries ---------------------------------------------------------------

library(tidyverse)
library(validate)


# import data -------------------------------------------------------------

df_clean <- read_rds("outputs/2018-09-19_GSS2017.RDS")



# run validations ---------------------------------------------------------

check_that( df_clean,
  WTSS > 0
)

stopifnot(nrow(df_clean)==2867)
