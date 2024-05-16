library("readxl")
library("dplyr")
data <- read_excel("/Users/cwang/Downloads/Colorado Mental Health Numerical Survey Results (1).xlsx")
summary_info <- list()

#number of rows
summary_info$num_observations <- nrow(data)

#number of columns
summary_info$num_col <- ncol(data)

#average hours spent on social media on a daily basis
summary_info$average_daily_hours_spent <- data %>%
  summarize(average_hour = mean(data$`How many hours a day do you spend on social media?`, na.rm = TRUE))

# percentage of people that use social media everyday
yes_responses <- data %>%
  filter(data$`Do you use social media everyday?` == '1') %>%
  nrow()

total_responses <- data %>%
  filter(!is.na(data$`Do you use social media everyday?`)) %>%
  nrow()

summary_info$percentage_yes <- (yes_responses / total_responses) * 100

# the most number of hours reported spent on social media per week
summary_info$most_hours_spent_on_social_per_week <- data %>%
  summarize(max_number = max(data$`How many hours a week do you spend on social media?`, na.rm = TRUE)) %>%
  pull(max_number)

