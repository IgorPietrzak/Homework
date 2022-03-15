# TASK 1:
data_full <- read.csv("http://www1.maths.leeds.ac.uk/~arief/MATH1712/data/vessels.csv") # nolint
data_subset <- subset(data_full, select = -c(Licence.Category)) # Create subset of data_full without Licence.Category column. # nolint
data <- unique(data_subset) # Remove excess rows
# Convince that Ive read the data in
proof_of_data <- function() {
    str(data_full)
}
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
    hist(ardglass_data$Overall.length, main="Ardglass Overall Length", xlab="Overall Length", breaks=10)
    hist(ardglass_data$Engine.power, main="Ardglass Engine Power", xlab="Engine Power", breaks=10)
    hist(newlyn_data$Overall.length, main="Newlyn Overall Length", xlab="Overall Length", breaks=10)
    hist(newlyn_data$Engine.power, main="Newlyn Engine Power", xlab="Engine Power", breaks=10)
    # Copy whatever line and run it outside the function
}

# TASK 4:
# Want to know if there's a statistically significant difference between the means #nolint
# SLOW WAY: returns true if we reject h0
length_hypothesis <- function() {
    ardglass_mean_length <- mean(ardglass_data$Overall.length)
    newlyn_mean_length <- mean(newlyn_data$Overall.length)
    s2_ardglass <- var(ardglass_data$Overall.length)
    s2_newlyn <- var(newlyn_data$Overall.length)
    t <- (ardglass_mean_length - newlyn_mean_length)/(sqrt((s2_ardglass)/(how_many_ardglass) + (s2_newlyn)/(how_many_newlyn))) #nolint
    dof <- (((s2_ardglass)/(how_many_ardglass) + (s2_newlyn)/(how_many_newlyn))^2)/((((s2_ardglass)^2)/((how_many_ardglass)^2 * (how_many_ardglass -1))) + (((s2_newlyn)^2)/((how_many_newlyn^2) * (how_many_newlyn -1)))) #nolint
    c_value <- abs(qt(p=0.025, df=dof))
    if(abs(t) > c_value) {
        return(TRUE)
    }
    else {
    return(FALSE)
    }
}   

# FAST WAY:
quick_length_hp <- function(){
    t.test(ardglass_data$Overall.length, newlyn_data$Overall.length, var.equal = FALSE) #nolint
}

# SLOW WAY: returns true if we reject h0
engine_hypothesis <- function() {
    ardglass_mean_ep <- mean(ardglass_data$Engine.power)
    newlyn_mean_ep <- mean(newlyn_data$Engine.power)
    s2_ardglasse <- var(ardglass_data$Engine.power)
    s2_newlyne <- var(newlyn_data$Engine.power)
    t2 <- (ardglass_mean_ep - newlyn_mean_ep)/(sqrt((s2_ardglasse)/(how_many_ardglass) + (s2_newlyne)/(how_many_newlyn))) #nolint
    dof2 <- (((s2_ardglasse)/(how_many_ardglass) + (s2_newlyne)/(how_many_newlyn))^2)/((((s2_ardglasse)^2)/((how_many_ardglass)^2 * (how_many_ardglass -1))) + (((s2_newlyne)^2)/((how_many_newlyn^2) * (how_many_newlyn -1)))) #nolint
    c_value2 <- abs(qt(p=0.025, df=dof2))
    if(abs(t2) > c_value2) {
        return(TRUE)
    }
    else {
    return(FALSE)
    }
}   

# FAST WAY:
quick_ep_hp <- function() {
    t.test(ardglass_data$Engine.power, newlyn_data$Engine.power, var.equal = FALSE) #nolint
}
hist(newlyn_data$Overall.length, main="Newlyn Overall Length", xlab="Overall Length", breaks=10)
