# Install the required packages
install.packages("ggplot2")
install.packages("tidyr")
install.packages("dplyr")

# Load the required libraries
library(ggplot2)
library(dplyr)
library(tidyr)

# Read the CSV file
data <- read.csv("/cloud/project/Survey/survey.csv")

# View the data
View(data)

# Data Cleaning

# Remove whitespace from column names
names(data) <- trimws(names(data))

# Standardize age groups
data$Age. <- gsub("17|18", "18 & below", data$Age.)
data$Age. <- gsub("19|20|21|19 yrs. Old", "19-21", data$Age.)
data$Age. <- gsub("22|23|24", "22-24", data$Age.)
data$Age. <- gsub("25|26|27|28", "25 & above", data$Age.)

# Convert columns to appropriate data types
data$Age. <- as.factor(data$Age.)
data$Sex. <- as.factor(data$Sex.)
data$Education.level <- as.factor(data$Education.level)
data$How.often.do.you.use.Digital.Payment. <- as.factor(data$How.often.do.you.use.Digital.Payment.)
data$How.long.have.you.been.using.Digital.payment. <- as.factor(data$How.long.have.you.been.using.Digital.payment.)

# Remove rows with missing data
cleaned_data <- na.omit(data)

# Remove duplicate rows
cleaned_data <- cleaned_data %>%
  distinct()

# View the cleaned data
View(cleaned_data)

# Create bar plot for Age distribution
bar_plot_age <- ggplot(cleaned_data, aes(x = Age.)) +
  geom_bar(fill = "skyblue") +
  labs(title = "Age Distribution",
       x = "Age Group",
       y = "Count") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))

bar_plot_age

#The bar plot illustrates the distribution of survey respondents across distinct age categories. The age ranges are segmented into four groups: "18 & below", "19-21", "22-24", and "25 & above". Each bar on the plot represents the count or frequency of individuals falling within a specific age range. This visualization enables a clear understanding of the distribution of ages within the surveyed population, facilitating insights into demographic trends and potential target audiences for specific initiatives or interventions.
#It's evident that the "19-21" age range has the highest frequency, with 33 respondents falling within this category. Therefore, among the four age ranges, "19-21" has the most respondents based on the provided ages.

# Create bar plot for Sex distribution
bar_plot_sex <- ggplot(cleaned_data, aes(x = Sex.)) +
  geom_bar(fill = "lightcoral") +
  labs(title = "Sex Distribution",
       x = "Sex",
       y = "Count") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))

bar_plot_sex
#The bar plot illustrates the distribution of survey respondents by sex, categorizing individuals into two groups: "Male" and "Female". Each bar on the plot represents the count or frequency of respondents belonging to a specific sex category. By observing the heights of the bars, we can identify which sex category has the highest frequency of respondents. This visualization provides valuable insights into the gender composition of the surveyed population, aiding in demographic analysis and decision-making processes.

# Create bar plot for Education Level distribution
bar_plot_educlevel <- ggplot(cleaned_data, aes(x = Education.level)) +
  geom_bar(fill = "orchid") +
  labs(title = "Educational Level Distribution",
       x = "Educational Level",
       y = "Count") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))

bar_plot_educlevel
#Based on the provided survey responses for education level, the highest frequency is observed in the "College" category, indicating that the majority of respondents have completed or are currently attending college. Conversely, the lowest frequency is found in the "College graduate" category, suggesting that fewer respondents have completed only senior high school education. This disparity reflects the educational attainment of the surveyed population, with a predominant focus on higher education levels such as college or college graduate status.

# Create bar plot for Digital Payment Usage Frequency
bar_plot_often <- ggplot(cleaned_data, aes(x = How.often.do.you.use.Digital.Payment.)) +
  geom_bar(fill = "orange") +
  labs(title = "Digital Payment Usage Frequency",
       x = "Usage Frequency",
       y = "Count") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))

bar_plot_often

#The bar plot depicts the frequency of respondents' usage of digital payment applications, categorizing users into three frequency categories: "Never", "Sometimes", and "Always". Each bar represents the count or frequency of respondents falling into a particular usage frequency category. By analyzing the heights of the bars, we can identify the frequency category with the highest and lowest respondent counts, providing insights into the distribution of digital payment usage among the surveyed population.
#From the bar plot, the "Sometimes" category has the highest frequency of respondents, while the "Never" category has the lowest frequency of respondents.

# Create bar plot for Digital Payment Usage Duration
bar_plot_long <- ggplot(cleaned_data, aes(x = How.long.have.you.been.using.Digital.payment.)) +
  geom_bar(fill = "green") +
  labs(title = "Digital Payment Usage Duration",
       x = "Usage Duration",
       y = "Count") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))

bar_plot_long
#The bar plot visualizes the duration of time users have been utilizing digital payment applications, categorizing users into different time intervals such as "1 week - 1 month", "1 month - 1 year", and "More than a year". Each bar on the plot represents the count or frequency of respondents falling within a specific time interval category. By analyzing the heights of the bars, we can discern the distribution of users across various usage durations.
#From the bar plot, we find that the category "More than a year" has the highest frequency of respondents, while the category "1 week - 1 month" has the lowest frequency of respondents.
