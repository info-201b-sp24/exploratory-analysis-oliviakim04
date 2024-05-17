library("readxl")
library("dplyr")
data <- read_excel("/Users/cwang/Downloads/Colorado Mental Health Numerical Survey Results (1).xlsx")

daily_hours_spent <- data$`How many hours a day do you spend on social media?`
table <- data %>%
  group_by(`Have you been diagnosed with a mental disorder?`) %>%
  select(`How many hours a day do you spend on social media?`, `How many hours a week do you spend on social media?`,
        `Do you feel pressure to obtain a certain amount of likes or followers on social media?`)

table <- table %>%
  rename(daily_hours_spent = `How many hours a day do you spend on social media?`,
         weekly_hours_spent = `How many hours a week do you spend on social media?`,
         mental_health_history = `Have you been diagnosed with a mental disorder?`,
         feel_peer_pressure = `Do you feel pressure to obtain a certain amount of likes or followers on social media?`)
