complete <-function(directory, id = 1:322){
  filelist <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  nobs <- numeric()
  
  for (i in id){
    data <- read.csv(filelist[i])
  nobs <- c(nobs, sum(complete.cases(data)))
  }
  
  data.frame(id, nobs)
}

cc <- complete("C:/Users/lillian/Documents/R/R-programming-week2/specdata", 54)
print(cc$nobs)

RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])
