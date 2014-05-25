setwd("d:/documents/coursera/gcd/UCI HAR Dataset")
library(data.table)
library(plyr)

# features.txt contains a listing of names of measurement types which come 
# from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
# The measurement names will be adjusted for use as R  variable names.

features <- data.frame(read.table("features.txt", header=FALSE)) 
names(features)<-c("id", "feature")
features <- data.table(features)

# Exercise activities such as Walking are listed in activity_labels.txt.

activity.labels <- data.frame(read.table("activity_labels.txt", header=FALSE)) 
names(activity.labels)<-c("activity.id", "activity.label")
activity.labels <- data.table(activity.labels)
activity.labels$activity.id <- as.factor(activity.labels$activity.id)

# Get testdata
# This table contains the measurements made on  the test subjects

setwd("d:/documents/coursera/gcd/UCI HAR Dataset/test")

x.test <- data.frame(read.table("X_test.txt", header=FALSE))

# Strip the following characters from the measurement type names: ( , ) - 
# replacing commas and dashes with periods 

temp.names <- as.vector(features$feature)
temp.names <- gsub("\\(\\)","",temp.names)
temp.names <- gsub("-",".",temp.names)
temp.names <- gsub(",",".",temp.names)
names(x.test) <- temp.names

# Label each row as a "test" subject

x.test$Id <- as.factor(c("test"))
x.test <- data.table(x.test)

y.test <- data.frame(read.table("y_test.txt", header=FALSE))
names(y.test) <- c("activity.id")
y.test <- data.table(y.test)
y.test$activity.id <- as.factor(y.test$activity.id)

subject.test <- data.frame(read.table("subject_test.txt", header=FALSE))
names(subject.test) <- c("subject.id")
subject.test$subject.id <- factor(subject.test$subject.id)

test.data <- data.table(subject.test, y.test, type=as.factor("test"),x.test)


# Now get training data

setwd("d:/documents/coursera/gcd/UCI HAR Dataset/train")

x.train <- data.frame(read.table("X_train.txt", header=FALSE))
names(x.train) <- temp.names
x.train$Id <- as.factor(c("train"))
x.train <- data.table(x.train)

y.train <- data.frame(read.table("y_train.txt", header=FALSE))
names(y.train) <- c("activity.id")
y.train <- data.table(y.train)
y.train$activity.id <- as.factor(y.train$activity.id)

subject.train <- data.frame(read.table("subject_train.txt", header=FALSE))
names(subject.train) <- c("subject.id")

train.data <- data.table(subject.train, y.train, type=as.factor("train"),x.train)

# Create a dataframe consisting of the the rows of the test and training data

samsung.data <- rbind(test.data, train.data)
levels(samsung.data$activity.id) <- activity.labels$activity.label

# We only require measuments of the mean and standard deviation. 
# Use grep to choose those columns whose names include "mean" or "std"

columns <- sort(c(grep("mean", names(samsung.data)),grep("std", names(samsung.data))))
samsung.clean <- samsung.data[, c(1:2,columns), with=FALSE]

# Use colmeans to find means of the required columns bu activity and subject. 
# The ddply function efficienly applies colmeans by group.

samsung.cleaned <- ddply(samsung.clean[,3:ncol(samsung.clean), with=FALSE], 
                       .(samsung.clean$activity.id,samsung.clean$subject.id), .fun=colMeans)

# Make column 1 and 2 names a bit tidier.

names(samsung.cleaned)[1:2] <- c("activity.id","subject.id")

# Output a comma separated variable file of the clean file of averages.

setwd("d:/documents/coursera/gcd/proj")
write.table(samsung.cleaned, file = "tidy_samsung.csv", sep=",", row.names=FALSE)




