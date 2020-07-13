pollutantmean <- function(directory, pollutant, id = 1:322){
  filelist <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  values <- numeric()
  
  for(i in id){
    data <- read.csv(filelist[i])
    values <- c(values, data[[pollutant]])
  }
  mean(values, na.rm = TRUE)
}

pollutantmean("C:/Users/lillian/Documents/R/R-programming-week2/specdata", "sulfate", 1:322)

