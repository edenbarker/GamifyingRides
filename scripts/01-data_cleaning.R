#### Preamble ####
# Purpose: Clean the dataset downloaded from Peloton member website
# Author: Eden Barker
# Data: 30 March 2022
# Contact: eden.barker@mail.utoronto.ca
# License: MIT
# Pre-requisites:
#   - Need to have access to a Peloton member account, download the member data under workouts
#   - Save dataset in inputs/data


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(tidyr)
library(knitr)
library(readr)

# Read in the raw data for user1
user1 <- read_csv("https://raw.githubusercontent.com/edenbarker/peloton_dataset/main/user1.csv")
View(user1)

# Cleaning data names and shrinking data frame
cleaned_user1 <-
  clean_names(user1)
cleaned_user1

user1df <- 
  cleaned_user1 %>% 
  select("workout_timestamp", "length_minutes", "fitness_discipline",
         "type", "title", "total_output", "avg_watts", "avg_resistance", 
         "avg_cadence_rpm", "avg_speed_kph", "distance_km", "avg_heartrate") |>
  na.omit(cleaned_user1) #removed NA rows
view(user1df)

# Selecting rows where Fitness Discipline is equal to 'Cycling' as workout focus
user1df[user1df$fitness_discipline == 'Cycling'] 

# Read in the raw data for user2
user2 <- read_csv("https://raw.githubusercontent.com/edenbarker/peloton_dataset/main/user2.csv")
View(user2)

# Cleaning data names and shrinking data frame
cleaned_user2 <-
  clean_names(user2)
cleaned_user2

user2df <- 
  cleaned_user2 %>% 
  select("workout_timestamp", "length_minutes", "fitness_discipline",
         "type", "title", "total_output", "avg_watts", "avg_resistance", 
         "avg_cadence_rpm", "avg_speed_kph", "distance_km", "avg_heartrate") |>
  na.omit(cleaned_user2) #removed NA rows
view(user2df)

# Selecting rows where Fitness Discipline is equal to 'Cycling' as workout focus
user1df[user1df$fitness_discipline == 'Cycling']


#### End of Data Cleaning  ####
