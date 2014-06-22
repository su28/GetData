run_analysis <- function(){
    test_files <- list.files(path = "test", pattern = "txt")
    test_folder <- list.files(path = "test/Inertial Signals", pattern = "txt")
    train_files <- list.files(path = "train", pattern = "txt")
    train_folder <- list.files(path = "train/Inertial Signals", pattern = "txt")

    tests <- data.frame(id = sample(1:length(test_folder[1])
    for (i in test_files){
        tests[i] = read.table(test_files)
    }
    for (i in test_folder){
        tests[i] = read.table(test_folder)
    }
    train <- data.frame(id = sample(1:length(train_folder[1])))
    for (i in train_files){
        train[i] = read.table(train_files)
    }
    for(i in train_folder){
        train[i] = read.table(train_folder)
    }
    
    allData <- merge(train, tests, by.x = "id", by.y = "id")
    
    mean <- lapply(allData, mean)
    act_labels <- read.table("activity_labels.txt")
    
}
