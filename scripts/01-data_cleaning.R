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
userdata1 <- read.csv("https://raw.githubusercontent.com/edenbarker/peloton_dataset/main/Persona1.csv")
View(user1)

# Cleaning data names and shrinking data frame
cleaned_user1 <-
  clean_names(userdata1)
cleaned_user1

userdata1 <- 
  cleaned_user1 %>% 
  select("date", "length_minutes", "instructor_name", "fitness_discipline",
         "type", "title", "total_output", "avg_watts", "avg_resistance", 
         "avg_cadence_rpm", "avg_speed_kph", "distance_km", "avg_heartrate") %>%
  na.omit(cleaned_user1) #removed NA rows
view(userdata1)

# Selecting rows where Fitness Discipline is equal to 'Cycling' as workout focus
userdata1[userdata1$fitness_discipline == 'Cycling'] 

# Saving cleaned data
write.csv(
  x = userdata1,
  file = "persona_1.csv")


# Read in the raw data for user2
userdata2 <- read.csv("https://raw.githubusercontent.com/edenbarker/peloton_dataset/main/Persona2.csv")
View(user2)

# Cleaning data names and shrinking data frame
cleaned_user2 <-
  clean_names(userdata2 )
cleaned_user2

userdata2  <- 
  cleaned_user2 %>% 
  select("date", "length_minutes", "instructor_name", "fitness_discipline",
         "type", "title", "total_output", "avg_watts", "avg_resistance", 
         "avg_cadence_rpm", "avg_speed_kph", "distance_km", "avg_heartrate") %>%
  na.omit(cleaned_user2) #removed NA rows
view(userdata2)

# Selecting rows where Fitness Discipline is equal to 'Cycling' as workout focus
userdata2[userdata2$fitness_discipline == 'Cycling']

# Saving cleaned data
write.csv(
  x = userdata2,
  file = "persona_2.csv")

#### End of Data Cleaning  ####
