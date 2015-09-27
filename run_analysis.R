library(dplyr)

activity_names <- read.table("activity_labels.txt",stringsAsFactors = FALSE,
                             col.names = c("Activity_Label","Activity_name"))
test_label <- read.table("./test/y_test.txt",stringsAsFactors = FALSE)
test_subject <- read.table("./test/subject_test.txt",stringsAsFactors = FALSE)
feature_name <- read.table("features.txt",stringsAsFactors = FALSE)
test_set <- read.table("./test/X_test.txt",stringsAsFactors = FALSE)
colnames(test_set) <- feature_name$V2
colnames(test_subject)[1] <- "Subject"
test_data <- cbind(test_subject,test_set)
test_data <- cbind(test_label,test_data)
colnames(test_data)[1] = c("Activity_Label")
test_df <- tbl_df(test_data)

train_label <- read.table("./train/y_train.txt",stringsAsFactors = FALSE)
train_subject <- read.table("./train/subject_train.txt",stringsAsFactors = FALSE)
train_set <- read.table("./train/X_train.txt",stringsAsFactors = FALSE)
colnames(train_set) <- feature_name$V2
colnames(train_subject)[1] <- "Subject"
train_data <- cbind(train_subject,train_set)
train_data <- cbind(train_label,train_data)
colnames(train_data)[1] = c("Activity_Label")
train_df <- tbl_df(train_data)

merged_data <- rbind(train_df,test_df)
mod_data <- merge(activity_names,merged_data,by = "Activity_Label")
mod_data <- tbl_df(mod_data)

mean_std_data <- mod_data[,grep("mean|std|Mean",names(merged_data))]
mean_std_data <- tbl_df(mean_std_data)
subject_activity <- mod_data[,2:3]
overall_data <- cbind(subject_activity,mean_std_data)

grouped_data <- group_by(overall_data,Subject,Activity_name)

tidy_data <- summarise_each(grouped_data,funs(mean))














