


library(ggplot2)
library(readxl)


file_path <- "/Users/harshitasingh/Downloads/Colorado Mental Health Numerical Survey Results.xlsx"

data <- read_excel(file_path)

response_summary <- table(data$'Do you try to limit your social media use?')

labels <- c("No", "Yes")

pie(response_summary, labels = labels, main = "Social Media Usage Limitation", col = c("red", "green"))

legend("topleft", legend = labels, fill = c("red", "green"), title = "Response")
