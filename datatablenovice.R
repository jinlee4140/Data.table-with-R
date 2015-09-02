#What is a data.table?
#Think data.frame as a set of columns
#every column is the same length, but different type.
#Goal 1: Reduce programming time (fewer function calls, less variable name repetition)
#Goal 2: Reduce compute time (fast aggregation, update by reference)

#Ordered joins: useful in finance (time series) but also in other fields e.g. genomics

#DT[i, j, by] <- equation

library("data.table")

# Create your first data.table 
my_first_data_table <- data.table(x = c("a","b","c","d","e"), y = c(1,2,3,4,5))  
my_first_data_table
# Create a data.table using recycling
DT <- data.table(a = c(1L,2L), b = LETTERS[1:4])
DT
# Print the third row to the console
DT[3]

# Print the second and third row to the console, but do not use any comma at all
DT[2:3]

DT[.N - 1]

colnames(DT)
dim(DT)

DT[c(2,2,3)]

#What do you think is the output of DT[, B]?
DT[, 8]
#VECTOR

#Type D <- 5 in the console. What do you think is the output of DT[, .(D)] and DT[, D]?
D <- 5
DT[, .(D)]
DT[, D]

#DT[, D] returns 5 as vector, and DT[, .(D)] returns 5 as data.table
#"Take DT, subset rows using i, then calculate j grouped by by".


DT2 <- data.table(A = c(1,2,3,4,5), B = letters[1:5], C = c(6,7,8,9,10))
DT2
DT2[c(1,3), .(B, C)]

ans <- DT[, .(B, val = A * C)]
ans

answ <- DT[, .(B, val = c(C,D))]
answ

