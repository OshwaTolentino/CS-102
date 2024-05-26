#Install the required packages
install.packages("tidyr")
install.packages("dplyr")

#Load the require libraries

library(dplyr)
library(tidyr)

# Read the CSV file
data <- read.csv("/cloud/project/Survey/survey.csv")

#Factoring the elements of the column in PE1 and change it numeric value
PE1 <- data$Do.you.find.using.Digital.payment.useful.
PE1_fr <- factor(data$Do.you.find.using.Digital.payment.useful., levels = c("Yes", "No", "Maybe"))
PE1_recode <- recode(PE1_fr, "Yes" = 1, "No" = 2, "Maybe" = 3)
#Getting the mean and standard deviation of PE1
PE1_mean <- mean(PE1_recode)
PE1_sd <- sd(PE1_recode)

#Factoring the elements of the column in PE2 and change it numeric value
PE2 <- data$Do.you.think.using.Digital.payment.method.will.help.you.manage.your.money.better.
PE2_fr <- factor(data$Do.you.think.using.Digital.payment.method.will.help.you.manage.your.money.better., levels = c("Yes", "No", "Maybe"))
PE2_recode <- recode(PE2_fr, "Yes" = 1, "No" = 2, "Maybe" = 3)
#Getting the mean and standard deviation of PE2
PE2_mean <- mean(PE2_recode)
PE2_sd <- sd(PE2_recode)

# Factoring the elements of the column in PE3 and change its numeric value
PE3 <- data$Do.you.believe.that.Digital.payment.method.will.make.your.financial.transaction.easier.
PE3_fr <- factor(PE3, levels = c("Yes", "No", "Maybe"))
PE3_recode <- recode(PE3_fr, "Yes" = 1, "No" = 2, "Maybe" = 3)

# Getting the mean and standard deviation of PE3, handling missing values
PE3_mean <- mean(PE3_recode, na.rm = TRUE)
PE3_sd <- sd(PE3_recode, na.rm = TRUE)

# Factoring the elements of the column in PE3 and change its numeric value
PE4 <- data$Do.you.think.Digital.payment.method.will.make.it.easier.for.you.to.keep.track.of.your.spending.
PE4_fr <- factor(PE4, levels = c("Yes", "No", "Maybe"))
PE4_recode <- recode(PE4_fr, "Yes" = 1, "No" = 2, "Maybe" = 3)

# Getting the mean and standard deviation of PE3, handling missing values
PE4_mean <- mean(PE4_recode, na.rm = TRUE)
PE4_sd <- sd(PE4_recode, na.rm = TRUE)

# Calculate the mean and standard deviation rounded to 2 decimal places
PE1_mean <- round(PE1_mean, 2)
PE1_sd <- round(PE1_sd, 2)

PE2_mean <- round(PE2_mean, 2)
PE2_sd <- round(PE2_sd, 2)

PE3_mean <- round(PE3_mean, 2)
PE3_sd <- round(PE3_sd, 2)

PE4_mean <- round(PE4_mean, 2)
PE4_sd <- round(PE4_sd, 2)

PE_data <- data.frame(
  Code = c("PE1", "PE2", "PE3", "PE4"),
  Mean = c(PE1_mean, PE2_mean, PE3_mean, PE4_mean),
  SD = c(PE1_sd, PE2_sd, PE3_sd, PE4_sd)
)

# Save the data frame as a CSV file
write.csv(PE_data, "PE.csv", row.names = FALSE)





#Factoring the elements of the column in EE1 and change it numeric value
EE1 <-data$Do.you.find.Digital.payment.method.easy.to.use.and.understand.
EE1_fr <-factor(data$Do.you.find.Digital.payment.method.easy.to.use.and.understand., levels = c("Strongly agree", "Agree", "Neutral", "Disagree", "Strongly disagree"))
EE1_recode <- recode(EE1_fr, "Strongly agree" = 1, "Agree" = 2, "Neutral" = 3, "Disagree" = 4, "Strongly disagree" = 5)
#Getting the mean and standard deviation of EE1
EE1_mean <- mean(EE1_recode)
EE1_sd <- sd(EE1_recode)

#Factoring the elements of the column in EE2 and change it numeric value
EE2 <-data$Do.you.find.digital.payment.platforms.user.friendly.and.efficient.for.making.transactions.
EE2_fr <-factor(data$Do.you.find.digital.payment.platforms.user.friendly.and.efficient.for.making.transactions., levels = c("Strongly agree", "Agree", "Neutral", "Disagree", "Strongly disagree"))
EE2_recode <- recode(EE2_fr, "Strongly agree" = 1, "Agree" = 2, "Neutral" = 3, "Disagree" = 4, "Strongly disagree" = 5)
#Getting the mean and standard deviation of EE2
EE2_mean <- mean(EE2_recode)
EE2_sd <- sd(EE2_recode) 

#Factoring the elements of the column in EE3 and change it numeric value
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


EE1_mean <- round(EE1_mean, 2)
EE1_sd <- round(EE1_sd, 2)

EE2_mean <- round(EE2_mean, 2)
EE2_sd <- round(EE2_sd, 2)

EE3_mean <- round(EE3_mean, 2)
EE3_sd <- round(EE3_sd, 2)

EE4_mean <- round(EE4_mean, 2)
EE4_sd <- round(EE4_sd, 2)


EE_data <- data.frame(
  Code = c("EE1", "EE2", "EE3", "EE4"),
  Mean = c(EE1_mean, EE2_mean, EE3_mean, EE4_mean),
  SD = c(EE1_sd, EE2_sd, EE3_sd, EE4_sd)
)

# Save the data frame as a CSV file
write.csv(EE_data, "EE.csv", row.names = FALSE)





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


SI1_mean <- round(SI1_mean, 2)
SI1_sd <- round(SI1_sd, 2)

SI2_mean <- round(SI2_mean, 2)
SI2_sd <- round(SI2_sd, 2)

SI3_mean <- round(SI3_mean, 2)
SI3_sd <- round(SI3_sd, 2)


SI_data <- data.frame(
  Code = c("SI1", "SI2", "SI3"),
  Mean = c(SI1_mean, SI2_mean, SI3_mean),
  SD = c(SI1_sd, SI2_sd, SI3_sd)
)

# Save the data frame as a CSV file
write.csv(SI_data, "SI.csv", row.names = FALSE)


FC1 <- data$How.easy.is.it.for.you.to.access.digital.payment.platforms.like.GCash..PayMaya..PayPal..etc..
FC1_fr <- factor(data$How.easy.is.it.for.you.to.access.digital.payment.platforms.like.GCash..PayMaya..PayPal..etc., levels = c("Very hard", "Hard", "Medium", "Easy", "Very easy")) 
FC1_recode <- recode(FC1_fr, "Very easy" = 1, "Easy" = 2, "Medium" = 3, "Hard" = 4, "Very hard" = 5)
FC1_mean <- mean(FC1_recode)
FC1_sd <- sd(FC1_recode)

FC2 <- data$Have.you.faced.any.problems.using.digital.payment.platforms.    
FC2_fr <- factor(data$Have.you.faced.any.problems.using.digital.payment.platforms., levels = c("Yes", "No", "Sometimes", "Maybe"))
FC2_recode <- recode(FC2_fr, "Yes" = 4, "No" = 1, "Sometimes" = 2, "Maybe" = 3)
FC2_mean <- mean(FC2_recode)
FC2_sd <- sd(FC2_recode)

FC3 <- data$What.features.would.you.like.digital.payment.platforms.to.have.to.make.them.easier.to.use.
FC3_fr <- factor(data$What.features.would.you.like.digital.payment.platforms.to.have.to.make.them.easier.to.use., levels = c("Faster transactions", "Simpler interface", "Better customer support", "More payment options", "More secure transactions"))
FC3_recode <- recode(FC3_fr, "Faster transactions" = 1, "Simpler interface" = 2, "Better customer support" = 3, "More payment options" = 4, "More secure transactions" = 5)
FC3_mean <- mean(FC3_recode)
FC3_sd <- sd(FC3_recode)


FC1_mean <- round(FC1_mean, 2)
FC1_sd <- round(FC1_sd, 2)

FC2_mean <- round(FC2_mean, 2)
FC2_sd <- round(FC2_sd, 2)

FC3_mean <- round(FC3_mean, 2)
FC3_sd <- round(FC3_sd, 2)


FC_data <- data.frame(
  Code = c("FC1", "FC2", "FC3"),
  Mean = c(FC1_mean, FC2_mean, FC3_mean),
  SD = c(FC1_sd, FC2_sd, FC3_sd)
)

# Save the data frame as a CSV file
write.csv(FC_data, "FC.csv", row.names = FALSE)


#Reading CSV Files
PE <- read_csv("/cloud/project/Survey/UTAUT/CSV Files/PE.csv")
EE <- read_csv("/cloud/project/Survey/UTAUT/CSV Files/EE.csv")
SI <- read_csv("/cloud/project/Survey/UTAUT/CSV Files/SI.csv")
FC <- read_csv("/cloud/project/Survey/UTAUT/CSV Files/FC.csv")


# Combine all data frames into one
merged_data <- bind_rows(PE,SI,FC,EE)

# Calculate the average mean and standard deviation rounded to 2 decimal places
read_merged_data <- read_csv("/cloud/project/Survey/CSV Files/UTAUT/MergedData.csv")
average_mean <- round(mean(read_merged_data$Mean), 2)
average_sd <- round(mean(read_merged_data$SD), 2)

# Create a new row for the average
average_row <- c("Total Average", average_mean, average_sd)

# Add the new row to the data frame
merged_data <- rbind(read_merged_data, average_row)

# Print the updated data frame
merged_data

# Save the combined data frame as a CSV file
write.csv(merged_data, "MergedData.csv", row.names = FALSE)


#Behavioral Intention

PE_merged_mean <- mean(c(PE1_mean,PE2_mean, PE3_mean, PE4_mean), na.rm = TRUE)

PE_merged_sd <- sqrt(mean(c(PE1_sd^2,PE2_sd^2, PE3_sd^2, PE4_sd^2), na.rm = TRUE))

PE_summary<- data.frame(
  `Title` = "Performance Expectancy",
  Mean = PE_merged_mean,
  SD = PE_merged_sd
)

# Save merged summary data frame as a CSV file
write.csv(PE_summary, "PE_Summary.csv", row.names = FALSE)


FC_merged_mean <- mean(c(FC1_mean, FC2_mean, FC3_mean), na.rm = TRUE)
FC_merged_sd <- sqrt(mean(c(FC1_sd^2, FC2_sd^2, FC3_sd^2), na.rm = TRUE))

FC_summary<-data.frame(
  `Title` = "Facilitating Conditions",
  Mean = FC_merged_mean,
  SD = FC_merged_sd
)

# Save FC merged summary data frame as a CSV file
write.csv(FC_summary, "FC_Summary.csv", row.names = FALSE)


EE_merged_mean <- mean(c(EE1_mean, EE2_mean, EE3_mean, EE4_mean), na.rm = TRUE)
EE_merged_sd <- sqrt(mean(c(EE1_sd^2, EE2_sd^2, EE3_sd^2, EE3_sd^2), na.rm = TRUE))

EE_summary<-data.frame(
  `Title` = "Effort Expectancy",
  Mean = EE_merged_mean,
  SD = EE_merged_sd
)

# Save EE merged summary data frame as a CSV file
write.csv(EE_summary, "EE_Summary.csv", row.names = FALSE)



SI_merged_mean <- mean(c(SI1_mean, SI2_mean, SI3_mean), na.rm = TRUE)
SI_merged_sd <- sqrt(mean(c(SI1_sd^2, SI2_sd^2, SI3_sd^2), na.rm = TRUE))
SI_summary<-data.frame(
  `Title` = "Social Influence",
  Mean = SI_merged_mean,
  SD = SI_merged_sd
)

# Save SI merged summary data frame as a CSV file
write.csv(SI_summary, "SI_Summary.csv", row.names = FALSE)

#Merged summaries
PE2<-read_csv("/cloud/project/Survey/UTAUT/CSV Files/PE_Summary.csv")
EE2<-read_csv("/cloud/project/Survey/UTAUT/CSV Files/EE_Summary.csv")
SI2<-read_csv("/cloud/project/Survey/UTAUT/CSV Files/SI_Summary.csv")

# Combine all summaries into a single data frame
merged_summary<- rbind(PE2, EE2, SI2)

# Save the merged summary data frame as a CSV file
write.csv(merged_summary, "Behavioral Intention.csv", row.names = FALSE)

#User Behaviour
FC2<-read_csv("/cloud/project/Survey/UTAUT/CSV Files/FC_Summary.csv")
BI<-read_csv("/cloud/project/Survey/UTAUT/CSV Files/Behavioral Intention.csv")

# Combine all summaries into a single data frame
merged_summary2<- rbind(FC2, BI)

# Save the merged summary data frame as a CSV file
write.csv(merged_summary2, "User Behaviour.csv", row.names = FALSE)

