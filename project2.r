# TASK 1:
data_full <- read.csv("http://www1.maths.leeds.ac.uk/~arief/MATH1712/data/vessels.csv") # nolint
data_subset <- subset(data_full, select = -c(Licence.Category)) # Create subset of data_full without Licence.Category column. # nolint
data <- unique(data_subset) # Remove excess rows

how_many_duplicates <- function() {
    duplicates <- nrow(data_subset) - nrow(data)
    return(duplicates)
}

most_common_vessel_name <- function() {
    name <- names(which.max(table(data$Vessel.name)))
    return(name)
}

# TASK 2:
# Making ardglass data frame:
ardglass_rows <- which(data$Home.port == "ARDGLASS")
ardglass_data <- data[(ardglass_rows), ]
# Making newlyn data frame:
newlyn_rows <- which(data$Home.port == "NEWLYN")
newlyn_data <- data[(newlyn_rows), ]
# How many vessels have newlyn or ardglass as their homeport?
how_many_ardglass <- nrow(ardglass_data)
how_many_newlyn <- nrow(newlyn_data)
# Use this function to deduce if they are typical or not:
are_they_typical <- function() {
    View(data)
    View(ardglass_data)
    View(newlyn_data)
}

# TASK 3:
# Plot histograms of overall length and engine power for both ports
histograms <- function() {
    hist(ardglass_data$Overall.length)
    hist(ardglass_data$Engine.power)
    hist(newlyn_data$Overall.length)
    hist(newlyn_data$Engine.power)
    # Copy whatever line and run it outside the function
}

# TASK 4: