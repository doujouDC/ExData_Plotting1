# Exploratory Data Analysis Plot 1
# Doug Joubert

library(tidyverse)
household_power_consumption <- read_csv("data/household_power_consumption.csv", 
                                        col_types = cols(Date = col_date(format = "%d/%m/%Y"), 
                                                         Time = col_time(format = "%H:%M:%S")))