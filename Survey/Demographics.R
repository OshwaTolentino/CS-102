install.packages("ggplot2")
install.packages("dplyr")
library(ggplot2)
library(dplyr)

data <- read.csv("/cloud/project/Survey/survey.csv")
View(data)

data$Name.of.your.School <- trimws(data$Name.of.your.School)

data$Name.of.your.School <- gsub("ISAT-U|Isatu|ISATU MAIN CAMPUS|Iloilo science and technology university|ISATU MAIN CAMPUS|ISATU MAIN|ISAT U|Isat u|iloilo Science and Technology University|ISATU|Iloilo science and technology", "Iloilo Science and Technology University", data$Name.of.your.School)

data$Name.of.your.School <- gsub("University of Iloilo|UI|UNIVERSITY OF ILOILO|PHINMA - UNIVERSITY OF ILOILO|University Of Iloilo ", "Phinma University of Iloilo", data$Name.of.your.School)

data$Name.of.your.School <- gsub("iloilo doctors college|IDC|Iloilo Doctors' College", "Iloilo Doctors College", data$Name.of.your.School)

data$Name.of.your.School <- gsub("ISUFST", "Iloilo State University of Fisheries Sciences and Technology", data$Name.of.your.School)

data$Name.of.your.School <- gsub("Central philippine University","Central Philippine University", data$Name.of.your.School)

data$Name.of.your.School <- gsub("University of San Augustine","University of San Agustin", data$Name.of.your.School)

data$Age. <- gsub("17|18", "18  & below", data$Age.)

data$Age. <- gsub("19|20|21|19 yrs. Old", "19-21", data$Age.)

data$Age. <- gsub("22|23|24", "22-24", data$Age.)

data$Age. <- gsub("25|26|27|28", "25 & above", data$Age.)

View(data)

cleaned_data <- na.omit(data)
View(cleaned_data)

# Create the pie chart of age
pie_chart_age <- ggplot(cleaned_data, aes(x = "", fill = factor(Age.))) +
  geom_bar(width = 1, position = "fill") +
  coord_polar(theta = "y") +
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
  scale_fill_manual(values = c("#FF9999", "#66CCCC", "#FFCC99")) +  # Custom colors
  labs(title = "Educational Level",
       fill = "Educational Level") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )
pie_chart_educlevel

# Create the pie chart of how often the user is using the app
pie_chart_often <- ggplot(cleaned_data, aes(x = "", fill = factor(How.often.do.you.use.Digital.Payment.))) +
  geom_bar(width = 1, position = "fill") +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Set2") +  # Change palette to "Set2"
  labs(title = "How often do you use Digital Payment?",
       fill = "How often do you use Digital Payment?") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )
pie_chart_often


# Create the pie chart of how long the user is using the app
pie_chart_long <- ggplot(cleaned_data, aes(x = "", fill = factor(data$How.long.have.you.been.using.Digital.payment.))) +
  geom_bar(width = 1, position = "fill") +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Accent") +  # Change palette to "Accent"
  labs(title = "How long have you been using Digital payment?",
       fill = "How long have you been using Digital payment?") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )
pie_chart_long

# Create the pie chart of the usefulness of the digital payment
pie_chart_useful <- ggplot(cleaned_data, aes(x = "", fill = factor(data$Do.you.find.using.Digital.payment.useful.))) +
  geom_bar(width = 1, position = "fill") +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Pastel1") +  # Change palette to "Pastel1"
  labs(title = "Do you find using Digital payment useful?",
       fill = "Do you find using Digital payment useful?") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )
pie_chart_useful
