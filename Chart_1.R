library("readxl")
library("ggplot2")
library("dplyr")
data <- read_excel("Colorado Mental Health Numerical Survey Results.xlsx")

data_filtered <- filter(data, !is.na(data$`How many hours a day do you spend on social media?`))

chart <- ggplot(data_filtered, aes(x = `How many hours a day do you spend on social media?`)) + 
  geom_histogram(binwidth = 1, color="black", fill = "blue") + 
  labs(title = "Hours Spent on Social Media Daily", y = "# of People", x = "Hours") +
  scale_x_continuous(breaks = seq(0, 20, 1))

chart
