# Exploratory Data Analysis Plot 1
# Doug Joubert

library(tidyverse)
household_power_consumption <- read_csv("data/household_power_consumption.csv", 
                                        col_types = cols(Date = col_date(format = "%d/%m/%Y"), 
                                                         Time = col_time(format = "%H:%M:%S")))

plot1 <- ggplot(data = household_power_consumption, mapping = aes(x = Global_active_power)) +
  geom_histogram(col = "black", fill = "red") +
  labs(title = "Global Active Power",
       x = "Global Active Power (kilowatts)",
       x = "Frequency"
       ) +
  theme(plot.title = element_text(hjust = 0.5)) +
  theme_classic()

ggsave("figure/plot1.png", plot1, width = 15, height = 10, dpi = 600)