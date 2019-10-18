# Exploratory Data Analysis Plot 2
# Doug Joubert

# Read in the data
library(tidyverse)
household_power_consumption <- read_csv("data/household_power_consumption.csv", 
                                        col_types = cols(Date = col_date(format = "%d/%m/%Y"), 
                                                         Time = col_time(format = "%H:%M:%S")))
# View the data to make sure you read it in correctly
str(household_power_consumption)


# Generate the plot, which I could not figure out
plot2 <- ggplot(data = household_power_consumption, mapping = aes(y = Global_active_power, x = Time)) +
  geom_line() +
  labs(title = "Global Active Power Vs Time",
       y = "Global Active Power (kilowatts)",
       x = "Time"
  ) +
  theme(plot.title = element_text(hjust = 0.5)) +
  theme_classic()

# Save the plot
ggsave("figure/plot2.png", plot2, dpi = 300) 
