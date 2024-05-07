install.packages("ggplot2")
install.packages("tidyr")
install.packages("dplyr")
library(ggplot2)
library(dplyr)
library(tidyr)


# Load the required libraries
library(dplyr)

# Read the CSV file
data <- read.csv("/cloud/project/Survey/survey.csv")

# View the data
View(data)

#Factoring the elements of the column in PE1 ang change it numeric value
PE1 <- data$Do.you.find.using.Digital.payment.useful.
PE1_fr <- factor(data$Do.you.find.using.Digital.payment.useful., levels = c("Yes", "No", "Maybe"))
PE1_recode <- recode(PE1_fr, "Yes" = 1, "No" = 2, "Maybe" = 3)
#Getting the mean and standard deviation of PE1
PE1_mean <- mean(PE1_recode)
PE1_sd <- sd(PE1_recode)

#Factoring the elements of the column in PE2 ang change it numeric value
PE2 <- data$Do.you.think.using.Digital.payment.method.will.help.you.manage.your.money.better.
PE2_fr <- factor(data$Do.you.think.using.Digital.payment.method.will.help.you.manage.your.money.better., levels = c("Yes", "No", "Maybe"))
PE2_recode <- recode(PE2_fr, "Yes" = 1, "No" = 2, "Maybe" = 3)
#Getting the mean and standard deviation of PE2
PE2_mean <- mean(PE2_recode)
PE2_sd <- sd(PE2_recode)

#Factoring the elements of the column in PE3 ang change it numeric value
PE3 <- data$Do.you.believe.that.Digital.payment.method.will.make.your.financial.transaction.easier.
PE3_fr <- factor(data$Do.you.believe.that.Digital.payment.method.will.make.your.financial.transaction.easier., levels = c("Yes", "No", "Maybe"))
PE3_recode <- recode(PE3_fr, "Yes" = 1, "No" = 2, "Maybe" = 3)
#Getting the mean and standard deviation of PE3
PE3_mean <- mean(PE3_recode)
PE3_sd <- sd(PE3_recode)

#Factoring the elements of the column in EE1 ang change it numeric value
EE1 <-data$Do.you.find.Digital.payment.method.easy.to.use.and.understand.
EE1_fr <-factor(data$Do.you.find.Digital.payment.method.easy.to.use.and.understand., levels = c("Strongly agree", "Agree", "Neutral", "Disagree", "Strongly disagree"))
EE1_recode <- recode(EE1_fr, "Strongly agree" = 1, "Agree" = 2, "Neutral" = 3, "Disagree" = 4, "Strongly disagree" = 5)
#Getting the mean and standard deviation of EE1
EE1_mean <- mean(EE1_recode)
EE1_sd <- sd(EE1_recode)

#Factoring the elements of the column in EE2 ang change it numeric value
EE2 <-data$Do.you.find.digital.payment.platforms.user.friendly.and.efficient.for.making.transactions.
EE2_fr <-factor(data$Do.you.find.digital.payment.platforms.user.friendly.and.efficient.for.making.transactions., levels = c("Strongly agree", "Agree", "Neutral", "Disagree", "Strongly disagree"))
EE2_recode <- recode(EE2_fr, "Strongly agree" = 1, "Agree" = 2, "Neutral" = 3, "Disagree" = 4, "Strongly disagree" = 5)
#Getting the mean and standard deviation of EE2
EE2_mean <- mean(EE2_recode)
EE2_sd <- sd(EE2_recode) 

#Factoring the elements of the column in EE3 ang change it numeric value
EE3 <-data$Do.you.find.the.process.of.digital.payment.platforms.with.other.financial.tools.and.services.beneficial.
EE3_fr <-factor(data$Do.you.find.the.process.of.digital.payment.platforms.with.other.financial.tools.and.services.beneficial., levels = c("Strongly agree", "Agree", "Neutral", "Disagree", "Strongly disagree"))
EE3_recode <- recode(EE3_fr, "Strongly agree" = 1, "Agree" = 2, "Neutral" = 3, "Disagree" = 4, "Strongly disagree" = 5)
#Getting the mean and standard deviation of EE3
EE3_mean <- mean(EE3_recode)
EE3_sd <- sd(EE3_recode) 

EE4 <-data$Do.you.find.digital.payment.method.convenient.to.use.
EE4_fr <-factor(data$Do.you.find.digital.payment.method.convenient.to.use., levels = c("Strongly agree", "Agree", "Neutral", "Disagree", "Strongly disagree"))
EE4_recode <- recode(EE4_fr, "Strongly agree" = 1, "Agree" = 2, "Neutral" = 3, "Disagree" = 4, "Strongly disagree" = 5)
EE4_mean <- mean(EE4_recode)
EE4_sd <- sd(EE4_recode) 

SI1 <- data$Do.you.generally.embrace.new.technologies..including.digital.payment.methods.
SI1_fr <- factor(data$Do.you.generally.embrace.new.technologies..including.digital.payment.methods., levels = c("Yes", "No","Maybe"))
SI1_recode <- recode(SI1_fr, "Yes" = 1, "No" = 2,"Maybe" = 3)
SI1_mean <- mean(SI1_recode)
SI1_sd <- sd(SI1_recode)

SI2 <-data$Are.you.influenced.by.the.behavior.of.others.when.it.comes.to.adopting.digital.payment.technologies.
SI2_fr <- factor(data$Are.you.influenced.by.the.behavior.of.others.when.it.comes.to.adopting.digital.payment.technologies., levels = c("Yes", "No","Maybe"))
SI2_recode <- recode(SI2_fr, "Yes" = 1, "No" = 2,"Maybe" = 3)
SI2_mean <- mean(SI2_recode)
SI2_sd <- sd(SI2_recode)

SI3 <-data$Do.you.feel.pressure.from.social.circles.to.use.digital.payment.platforms.
SI3_fr <- factor(data$Do.you.feel.pressure.from.social.circles.to.use.digital.payment.platforms., levels = c("Yes", "No","Maybe"))
SI3_recode <- recode(SI3_fr, "Yes" = 1, "No" = 2,"Maybe" = 3)
SI3_mean <- mean(SI3_recode)
SI3_sd <- sd(SI3_recode)

FC1 <- data$How.easy.is.it.for.you.to.access.digital.payment.platforms.like.GCash..PayMaya..PayPal..etc..
FC1_fr <- factor(data$How.easy.is.it.for.you.to.access.digital.payment.platforms.like.GCash..PayMaya..PayPal..etc., levels = c("Very hard", "Hard", "Medium", "Easy", "Very easy")) 
FC1_recode <- recode(FC1_fr, "Very hard" = 1, "Hard" = 2, "Medium" = 3, "Easy" = 4, "Very easy" = 5)
FC1_mean <- mean(FC1_recode)
FC1_sd <- sd(FC1_recode)


FC2 <- data$Have.you.faced.any.problems.using.digital.payment.platforms.    
FC2_fr <- factor(data$Have.you.faced.any.problems.using.digital.payment.platforms., levels = c("Yes", "No", "Sometimes", "Maybe"))
FC2_recode <- recode(FC2_fr, "Yes" = 1, "No" = 2, "Sometimes" = 3, "Maybe" = 4)
FC2_mean <- mean(FC2_recode)
FC2_sd <- sd(FC2_recode)

FC3 <- data$What.features.would.you.like.digital.payment.platforms.to.have.to.make.them.easier.to.use.
FC3_fr <- factor(data$What.features.would.you.like.digital.payment.platforms.to.have.to.make.them.easier.to.use., levels = c("Faster transactions", "Simpler interface", "Better customer support", "More payment options", "More secure transactions"))
FC3_recode <- recode(FC3_fr, "Faster transactions" = 1, "Simpler interface" = 2, "Better customer support" = 3, "More payment options" = 4, "More secure transactions" = 5)
FC3_mean <- mean(FC3_recode)
FC3_sd <- sd(FC3_recode)


# Trim whitespace from school names
data$Name.of.your.School <- trimws(data$Name.of.your.School)

# Standardize school names
data$Name.of.your.School <- gsub("ISAT-U|Isatu|ISATU MAIN CAMPUS|Iloilo science and technology university|ISATU MAIN CAMPUS|ISATU MAIN|ISAT U|Isat u|iloilo Science and Technology University|ISATU|Iloilo science and technology", "Iloilo Science and Technology University", data$Name.of.your.School)

data$Name.of.your.School <- gsub("University of Iloilo|UI|UNIVERSITY OF ILOILO|PHINMA - UNIVERSITY OF ILOILO|University Of Iloilo|Iloilo University|Phinma- Phinma University of Iloilo", "Phinma University of Iloilo", data$Name.of.your.School)

data$Name.of.your.School <- gsub("iloilo doctors college|IDC|Iloilo Doctors' College|Iloilo Doctor's College", "Iloilo Doctors College", data$Name.of.your.School)

data$Name.of.your.School <- gsub("ISUFST", "Iloilo State University of Fisheries Sciences and Technology", data$Name.of.your.School)

data$Name.of.your.School <- gsub("Central philippine University","Central Philippine University", data$Name.of.your.School)

data$Name.of.your.School <- gsub("University of San Augustine","University of San Agustin", data$Name.of.your.School)

# Standardize age groups
data$Age. <- gsub("17|18", "18 & below", data$Age.)

data$Age. <- gsub("19|20|21|19 yrs. Old", "19-21", data$Age.)

data$Age. <- gsub("22|23|24", "22-24", data$Age.)

data$Age. <- gsub("25|26|27|28", "25 & above", data$Age.)

# Remove rows with missing data
cleaned_data <- na.omit(data)

# View the cleaned data
View(cleaned_data)


# Create a function to calculate percentages
calculate_percent <- function(x) {
  lbl <- paste0(round(100*x/sum(x), 1), "%")
  return(lbl)
}

# Create the pie chart of age
pie_chart_age <- ggplot(cleaned_data, aes(x = "", fill = factor(Age.))) +
  geom_bar(width = 1, position = "fill") +
  coord_polar(theta = "y") +
  geom_text(aes(label = calculate_percent(..count..)), stat = "count", position = position_fill(vjust = 0.5)) +  # Add percentage labels
  scale_fill_brewer(palette = "Paired") +  # Change palette to "Paired"
  labs(title = "Age",
       fill = "Age") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )
pie_chart_age

# Create the pie chart of sex
pie_chart_sex <- ggplot(cleaned_data, aes(x = "", fill = factor(Sex.))) +
  geom_bar(width = 1, position = "fill") +
  coord_polar(theta = "y") +
  geom_text(aes(label = calculate_percent(..count..)), stat = "count", position = position_fill(vjust = 0.5)) +  # Add percentage labels
  scale_fill_brewer(palette = "Dark2") +  # Change palette to "Dark2"
  labs(title = "Sex",
       fill = "Sex") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )
pie_chart_sex

# Create the pie chart of school
pie_chart_school <- ggplot(cleaned_data, aes(x = "", fill = factor(Name.of.your.School))) +
  geom_bar(width = 1, position = "fill") +
  coord_polar(theta = "y") +
  geom_text(aes(label = calculate_percent(..count..)), stat = "count", position = position_fill(vjust = 0.5)) +  # Add percentage labels
  scale_fill_brewer(palette = "Set3") +
  labs(title = "School",
       fill = "School") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )
pie_chart_school

# Create the pie chart of Education Level
pie_chart_educlevel <- ggplot(cleaned_data, aes(x = "", fill = factor(Education.level))) +
  geom_bar(width = 1, position = "fill") +
  coord_polar(theta = "y") +
  geom_text(aes(label = calculate_percent(..count..)), stat = "count", position = position_fill(vjust = 0.5)) +  # Add percentage labels
  scale_fill_manual(values = c("#FF9999", "#66CCCC", "#FFCC99")) +  # Custom colors
  labs(title = "Educational Level",
       fill = "Educational Level") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )
pie_chart_educlevel

# Create the pie chart of how often the user is uses the app
pie_chart_often <- ggplot(cleaned_data, aes(x = "", fill = factor(How.often.do.you.use.Digital.Payment.))) +
  geom_bar(width = 1, position = "fill") +
  coord_polar(theta = "y") +
  geom_text(aes(label = calculate_percent(..count..)), stat = "count", position = position_fill(vjust = 0.5)) +  # Add percentage labels
  scale_fill_brewer(palette = "Set2") +  # Change palette to "Set2"
  labs(title = "How often do you use Digital Payment?",
       fill = "How often do you use Digital Payment?") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )
pie_chart_often

# Create the pie chart of how long the user is uses the app
pie_chart_long <- ggplot(cleaned_data, aes(x = "", fill = factor(How.long.have.you.been.using.Digital.payment.))) +
  geom_bar(width = 1, position = "fill") +
  coord_polar(theta = "y") +
  geom_text(aes(label = calculate_percent(..count..)), stat = "count", position = position_fill(vjust = 0.5)) +  # Add percentage labels
  scale_fill_brewer(palette = "Accent") +  # Change palette to "Accent"
  labs(title = "How long have you been using Digital payment?",
       fill = "How long have you been using Digital payment?") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )
pie_chart_long


