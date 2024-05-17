library("readxl")
library("ggplot2")

data <- read_excel("C:/Users/chaew/Downloads/Colorado Mental Health Numerical Survey Results.xlsx")

ggplot(data, aes(x = `Emotional Wellbeing Total`, y = `How many hours a week do you spend on social media?`)) +
  geom_point(size = 2, shape = 23, color = "blue") +
  labs(title = "Scatter Plot of Social Media Hours vs. Emotional Well-being",
       x = "Emotional Well-being Total",
       y = "Hours of Social Media in a Week")


