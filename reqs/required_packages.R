# Purpose: Install Required Libraries for analysis

#Tidyverse

if(!require("tidyverse", character.only = T)) {
  install.packages("tidyverse")
  library("tidyverse")
} else{
  library(tidyverse)
}

#haven to read more file formats

if(!require("haven", character.only = T)) {
  install.packages("haven")
  library("haven")
} else{
  library(haven)
}

#sjlabelled to handle labels in SPSS Files

if(!require("sjlabelled", character.only = T)) {
  install.packages("sjlabelled")
  library("sjlabelled")
} else{
  library(sjlabelled)
}

#usethis to read more file formats

if(!require("usethis", character.only = T)) {
  install.packages("usethis")
  library("usethis")
} else{
  library(usethis)
}
