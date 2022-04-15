#### Preamble ####
# Purpose: Clean the dataset downloaded from Peloton member website
# Author: Eden Barker
# Data: 30 March 2022
# Contact: eden.barker@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have access to a Peloton member account, download the member data under workouts
# - Save dataset in inputs/data
# - Don't forget to gitignore it!


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(tidyr)
library(knitr)
library(readr)

# Read in the raw data for user1
user1 <- read_csv("~/Desktop/user1.csv")
View(user1)

# Cleaning data names and shrinking data frame
cleaned_user1 <-
  clean_names(user1)
cleaned_user1

user1_data <- 
  cleaned_user1 %>% 
  select("Workout Timestamp", "Length (minutes)", "Fitness Discipline",
         "Type", "Title", "Total Output", "Avg. Watts", "Avg. Resistance", 
         "Avg. Cadence (RPM)", "Avg. Speed (kph)", "Distance (km)", "Avg. Heartrate") |>
  na.omit(cleaned_user1) #removed NA rows
view(user1_data)

# Selecting rows where Fitness Discipline is equal to 'Cycling' as workout focus
user1_data[user1_data$FitnessDiscipline == 'Cycling']





# Read in the raw data for user2
user2 <- read_csv("~/Desktop/user2.csv")
View(user2)

# Cleaning data names and shrinking data frame
cleaned_user2 <-
  clean_names(user2)
cleaned_user2

user2_data <- 
  cleaned_user2 %>% 
  select("Workout Timestamp", "Length (minutes)", "Fitness Discipline",
         "Type", "Title", "Total Output", "Avg. Watts", "Avg. Resistance", 
         "Avg. Cadence (RPM)", "Avg. Speed (kph)", "Distance (km)", "Avg. Heartrate") |>
  na.omit(cleaned_user2) #removed NA rows
view(user2_data)

# Selecting rows where Fitness Discipline is equal to 'Cycling' as workout focus
user2_data[user2_data$FitnessDiscipline == 'Cycling']

#### End of Data Cleaning  ####
