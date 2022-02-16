data = read.csv('file:///Users/igorpietrzak/Downloads/buffalo.csv')
# Defining global varaibles:
# TASK 1:
max_snowfall = max(data$snowfall)
min_snowfall = min(data$snowfall)
# TASK 2:
# a.)
min_snowfall_year_row = which(grepl(min_snowfall, data$snowfall)) # Finding row
min_snowfall_year = data[min_snowfall_year_row, 1] # storing value of found row
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
hm_greater_than_3m = length(which(snowfall_in_m > 3))
# TASK 3:
x = data$year
y = snowfall_in_m
greater_than_3m = (which(snowfall_in_m > 3))
lin_width = 1
# Functions performing each of the tasks:
task1 <- function(){
  print("Minimum snowfall:")
  print(min_snowfall)
  print("Maximum snowfall:")
  print(max_snowfall)
}

task2 <- function(){
  print("a.)")
  print(min_snowfall_year)
  print("b.)")
  print(max_snowfall_year)
  print("c.)")
  print(average_snowfall)
  print("d.)")
  print(snowfall_sd)
  print("e.)")
  print(snowfall_in_cm_sd)
  print("f.)")
  print(hm_greater_than_3m)
}

task3 <- function(){
  title = title(main = "Snowfall in m per year")
  plot(x,y,xlab="Year",ylab="Snowfall (m)", col = ifelse(y > 3,'blue','black'), pch = 19 )
  # Used for(index in greater_than_3m){
  #  print(data[index,1])
  #  }
  # To generate these values from data$year
  abline(v = 1910, col="red", lwd=lin_width, lty=2)
  abline(v = 1945, col="red", lwd=lin_width, lty=2)
  abline(v = 1958, col="red", lwd=lin_width, lty=2)
  abline(v = 1970, col="red", lwd=lin_width, lty=2)
  abline(v = 1977, col="red", lwd=lin_width, lty=2)
  abline(v = 1978, col="red", lwd=lin_width, lty=2)
  abline(v = 1984, col="red", lwd=lin_width, lty=2)
  abline(v = 1996, col="red", lwd=lin_width, lty=2)
  abline(v = 2001, col="red", lwd=lin_width, lty=2)
  abline(v = 2002, col="red", lwd=lin_width, lty=2)
  abline(v = 2014, col="red", lwd=lin_width, lty=2)
  
  
}

get_mode <- function(v) {
  unique_v = unique(v)
  tab = tabulate(match(v, unique_v))
  return(unique_v[tab == max(tab)])
}

task4 <- function(brks){
  hist(data$snowfall,breaks = brks, xlab ="Snowfall in inches") # modes: 10 for 1, 40 for 2,
}

main <- function(){
  
  task4(10)
}
main()
