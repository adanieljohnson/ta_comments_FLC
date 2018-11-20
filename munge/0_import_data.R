# Purpose: import data from 2016 GSS and format for R

url <- "http://users.wfu.edu/dewittme/data/sample/GSS2016.sav"

# Read Raw Data
raw_data <-read_spss(url)


# Assign labels
clean_data_1 <- as_label(raw_data)

# Write to outputs

write_rds(clean_data_1, paste0("outputs/", Sys.Date(),"_GSS2017.RDS"))

          