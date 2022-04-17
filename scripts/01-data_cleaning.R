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
install.packages("janitor")
install.packages("tidyverse")
install.packages("tidyr")
install.packages("dplyr")
library(tidyverse)
library(janitor)
library(tidyr)
library(dplyr)

# Read in the raw data for user1
userdata1 <- read.csv("https://raw.githubusercontent.com/edenbarker/peloton_dataset/main/Persona1.csv")
View(userdata1)

# Cleaning data names and shrinking data frame
cleaned_user1 <-
  clean_names(userdata1)
cleaned_user1
head(cleaned_user1)

persona1 <- 
  cleaned_user1 %>% 
  select("workout", "length_minutes", "instructor_name", "fitness_discipline",
         "type", "title", "total_output", "avg_watts", "avg_resistance", 
         "avg_cadence_rpm", "avg_speed_kph", "distance_km", "avg_heartrate") %>%
  na.omit(cleaned_user1) #removed NA rows, these are workouts that are not tracked through personal health monitors
  head(persona1)

# Saving cleaned data
write.csv(
  x = persona1,
  file = "persona1.csv")


# Read in the raw data for user2
userdata2 <- read.csv("https://raw.githubusercontent.com/edenbarker/peloton_dataset/main/Persona2.csv")
View(userdata2)

# Cleaning data names and shrinking data frame
cleaned_user2 <-
  clean_names(userdata2)
cleaned_user2

persona2 <- 
  cleaned_user2 %>% 
  select("workout", "length_minutes", "instructor_name", "fitness_discipline",
         "type", "title", "total_output", "avg_watts", "avg_resistance", 
         "avg_cadence_rpm", "avg_speed_kph", "distance_km", "avg_heartrate") %>%
  na.omit(cleaned_user2) #removed NA rows, these are workouts that are not tracked through personal health monitors
head(persona2)

# Saving cleaned data
write.csv(
  x = persona2,
  file = "persona2.csv")

#### End of Data Cleaning  ####
