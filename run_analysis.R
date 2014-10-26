# initialize empty data.frame
data <- data.frame()

# read activity labels
al <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)

# read feature labels
f <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)
# paste a "V" prior each feature id
f[,1] = paste("V",f[,1],sep="")

# read subject ids from training set
tmp <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
# name variable
names(tmp) <- "subject_id"
# adding to data
data <- tmp

# read activities from training set
tmp <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
# name variable
names(tmp) <- "activity"
# replacing activity id by activity label
tmp[,1] <- al[tmp[,1],2]

# adding to data
data[,names(tmp)] <- tmp

# read subject ids from training set
tmp <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
# renaming columns
names(tmp) <- f[f[,1]==names(tmp),2]
# add the columns to dataset
data <- cbind(data,tmp)


# read body_acc_x_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("body_acc_x" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# read body_acc_y_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("body_acc_y" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# read body_acc_z_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("body_acc_z" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)


# read body_gyro_x_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("body_gyro_x" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# read body_gyro_y_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("body_gyro_y" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# read body_gyro_z_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("body_gyro_z" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)


# read total_acc_x_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("total_acc_x" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# read total_acc_y_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("total_acc_y" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# read total_acc_z_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("total_acc_z" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# put data into traindata data.frame
traindata <- data




# initialize empty data.frame
data <- data.frame()

# read subject ids from training set
tmp <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
# name variable
names(tmp) <- "subject_id"
# adding to data
data <- tmp

# read activities from training set
tmp <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
# name variable
names(tmp) <- "activity"
# replacing activity id by activity label
tmp[,1] <- al[tmp[,1],2]

# adding to data
data[,names(tmp)] <- tmp

# read subject ids from training set
tmp <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
# renaming columns
names(tmp) <- f[f[,1]==names(tmp),2]
# add the columns to dataset
data <- cbind(data,tmp)


# read body_acc_x_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("body_acc_x" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# read body_acc_y_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("body_acc_y" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# read body_acc_z_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("body_acc_z" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)


# read body_gyro_x_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("body_gyro_x" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# read body_gyro_y_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("body_gyro_y" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# read body_gyro_z_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("body_gyro_z" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)


# read total_acc_x_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("total_acc_x" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# read total_acc_y_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("total_acc_y" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# read total_acc_z_train.txt
tmp <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt", header=FALSE)
# renaming columns
names(tmp) <- paste("total_acc_z" , grep("[0-9]", names(tmp)) , sep="_")
# add the columns to dataset
data <- cbind(data,tmp)

# merge with traindata 
data <- rbind(data,traindata)

# calculate mean by subject activity combinations 
meanBySubjectActivity <- aggregate(data, by=list(data$subject, data$activity),FUN=mean, na.rm=TRUE)
# prefix with mean_ 
names(meanBySubjectActivity)[3:length( names(meanBySubjectActivity) )] <- paste( "mean_", names(meanBySubjectActivity)[3:length( names(meanBySubjectActivity) )] , sep="_")

# calculate sd by subject activity combinations
sdBySubjectActivity <- aggregate(data, by=list(data$subject, data$activity),FUN=sd, na.rm=TRUE)
# prefix with sd_ 
names(sdBySubjectActivity)[3:length( names(sdBySubjectActivity) )] <- paste( "sd_", names(sdBySubjectActivity)[3:length( names(sdBySubjectActivity) )] , sep="_")

# cbind mean and sd by subject activity combinations
summarydata <- cbind( meanBySubjectActivity , sdBySubjectActivity[,3:length( names(sdBySubjectActivity) )] )

# write merged summarydata to file 
write.table(summarydata, file = "tidydata.txt", row.name=FALSE)
