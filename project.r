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
greater_than_3m = length(which(snowfall_in_m > 3))
# TASK 3:
x = data$year
y = snowfall_in_m

# Functions performing each of the tasks:
task1 = function(){
  print("Minimum snowfall:")
  print(min_snowfall)
  print("Maximum snowfall:")
  print(max_snowfall)
}

task2 = function(){
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
  print(greater_than_3m)
}

task3 = function(){
  marked = points(x[y > 3], y[y > 3], col = "red")
  title = title(main = "Snowfall in m per year")
  plot(x, y + marked, xlab = "Year", ylab = "Snowfall (m)", main = title)
}

task4 = function(brks){
  hist(y,breaks = brks)
}

main = function(){

}
main()
