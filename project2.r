data_full <- read.csv("http://www1.maths.leeds.ac.uk/~arief/MATH1712/data/vessels.csv") # nolint
data_subset <- subset(data_full, select = -c(Licence.Category)) # Create subset of data_full without Licence.Category column. # nolint
data <- unique(data_subset) # Remove excess rows
most_common_vessel_name <- names(which.max(table(data$Vessel.name))) # get most common vessel name. # nolint
print(most_common_vessel_name)