# TASK 1:
data = read.csv('file:///Users/igorpietrzak/Downloads/buffalo.csv')
max_snowfall = max(data$snowfall)
min_snowfall = min(data$snowfall)
#TASK 2:
# a.)
min_snowfall_year_row = which(grepl(min_snowfall, data$snowfall)) # Finding row
max_snowfall_year = data[min_snowfall_year_row, 1] # storing value of found row
# b.)
max_snowfall_year_row = which(grepl(max_snowfall, data$snowfall))
max_snowfall_year = data[max_snowfall_year_row, 1]
# c.)
average_snowfall = mean(data$snowfall)
# d.)
snowfall_sd = sd(data$snowfall)
# e.)
snowfall_in_cm = (data$snowfall)*2.54
snowfall_in_cm_sd = sd(snowfall_in_cm)
# f.)
snowfall_in_m = (snowfall_in_cm)/100
greater_than_3m = length(which(snowfall_in_m > 3))
