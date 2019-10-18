# Exploratory Data Analysis Plot 2
# Doug Joubert

# Read in the data
library(tidyverse)

household_power_consumption <- read_csv("data/household_power_consumption.csv", 
                                        col_types = cols(Date = col_date(format = "%d/%m/%Y"), 
                                                         Time = col_time(format = "%H:%M:%S")))