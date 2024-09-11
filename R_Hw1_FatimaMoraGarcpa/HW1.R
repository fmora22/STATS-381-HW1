# Homework 1 - Intro to R 
# Fatima Mora Garcia
# STAT 382 Fall 2024 
# Professor: Dr. Jennifer Pajda-De La O
# Description: Data Frame Creation from a pepper enthusiast who put together the following data set about different peppers 

# (a) Create a vector called pepper consisting of the words Bell, Tabasco, Ghost
pepper <- c("Bell", "Tabasco", "Ghost")

# (b) Create a vector called scoville consisting of the Scoville Units as numbers
scoville <- c(0, 50, 855)

# (c) Create a vector called days consisting of the Growing Times as numbers
days <- c(75, 80, 120)

# (d) Combine these three vectors to create a data frame called HeatScale
HeatScale <- data.frame(Pepper = pepper, Scoville_Units = scoville, Growing_Time_Days = days)

# (e) One of the hottest peppers in the world is the Carolina Reaper. The Reaper has a
# Scoville Unit (in thousands) of 2000, and a growing time in days of about 95 days.
cr <- data.frame(Pepper = "Carolina Reaper", Scoville_Units = "2000", Growing_Time_Days = "95")

# (f) Add cr as a row to HeatScale. (Make sure you work with the data frame you
# previously created, and not the original vectors.)
HeatScale <- rbind(HeatScale, cr)

# (g)Determine the variable type of each variable in HeatScale and describe any issues,
# if any, you observe. Include any code used and include your values as a comment
str(HeatScale) 

#Pepper are a characters which is fine given the data type held in this 
#Scoville_Units are characters, but should be numeric 
#Growing_Time_Days are characters, but should be numeric
#This could be an issue when trying to perform calculations on these variables

# (h)Convert each variable to an appropriate type (numeric, character, factor, or ordered
# factor) within the data frame. For each type you choose, explain why you picked that
# type. Include your values as a comment in your code. 
HeatScale$Pepper <- ordered(HeatScale$Pepper, levels = c("Bell", "Tabasco", "Ghost", "Carolina Reaper")) # Ordered because there is a increasing scale of spiciness (Scoville Units) and each pepper has a different level of spiciness
HeatScale$Scoville_Units <- as.numeric(HeatScale$Scoville_Units) # Numeric because the Scoville Units are numbers
HeatScale$Growing_Time_Days <- as.numeric(HeatScale$Growing_Time_Days) # Numeric because the Growing Time in Days are numbers

# check updated data frame for the correct conversion
str(HeatScale)
