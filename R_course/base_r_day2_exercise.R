# Open a new  script and write code to create three new objects (any type, any name, any value).
a <- 1
b <- c(2:5)
c <- "Hi"

# Save your  script.

# Save all objects in your workspace to an .RData file.

save(a, b, c, file = "workspace.RData")

save(list = ls(), file = "workspace2.RData") # better version

save.image(file = "workspace3.RData") # To save all

# Write one object in your workspace to a file using saveRDS().

saveRDS(object = b, file = "b.rds")

# Remove one object from your workspace.

rm(b)

# Prove that the object was removed.
ls()

# Remove all objects from your workspace.

rm (list = ls())

# Display your working directory.

getwd()

# Create a new directory and set the working directory in that new directory.

dir.create("test_directory")
setwd("test_directory/")
getwd()

# Restore objects saved in the .RData file to your workspace.

load("/project/exet5457/r_week_1/base_r_day2/workspace.RData")

# Restore the object saved in the RDS file to your workspace under a diﬀerent name.

b_restored <-readRDS(file = "/project/exet5457/r_week_1/base_r_day2/b.rds")

# Change back to previous directory 

setwd("/project/exet5457/r_week_1/base_r_day2/")

# Descriptive statistics
# Use readRDS() to load the file my_day2matrix.rds and assign the object to the name m.

m <- readRDS("/project/shared/r/1_r_data_science/2-base/my_day2matrix.rds")

# Compute the sum of values in each row and add those values as a new column in the matrix.

m <- cbind(m, row_sum = rowSums(m))
m <- rbind(m, col_sum = colSums(m))

# Run the command data("ToothGrowth") to load the builtin data set ToothGrowth.

data("ToothGrowth")

# Open the help page for the ToothGrowth data set, to learn more about it.

help("ToothGrowth")

# What is the class of the ToothGrowth object?
# data frame

class(ToothGrowth)

#   What type of data is stored in each column of the ToothGrowth data set?
#   Numeric, factor, numeric 

#   What is the mean tooth length across all observations in the data set?

mean(ToothGrowth$len)

#   What is maximum value of tooth length?

max(ToothGrowth$len)

#   What is minimum value of tooth length?

max(ToothGrowth$len)

#   Can you use the functions rowSums() and colSums() on the ToothGrowth object?

