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
