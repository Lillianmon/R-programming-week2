corr <- function(directory, threshold = 0){
  filelist <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  df <- complete(directory)
  ids <- df[df["nobs"] > threshold, ]$id
  corrr <- numeric()
  
  for(i in ids){
    data <- read.csv(filelist[i])
    dff <- data[complete.cases(data), ]
    corrr <- c(corrr, cor(dff$sulfate, dff$nitrate))
  }
  return(corrr)
}


cr <- corr("C:/Users/lillian/Documents/R/R-programming-week2/specdata")
cr <- sort(cr)
RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

cr <- corr("C:/Users/lillian/Documents/R/R-programming-week2/specdata", 129)                
cr <- sort(cr)                
n <- length(cr)    
RNGversion("3.5.1")
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)


cr <- corr("C:/Users/lillian/Documents/R/R-programming-week2/specdata", 2000)                
n <- length(cr)                
cr <- corr("C:/Users/lillian/Documents/R/R-programming-week2/specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))
