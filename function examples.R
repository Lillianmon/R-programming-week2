f <- function(arguments){
  #Do something here
}

#set default value
f <- function(a, b = 1, c = 2, d = NULL){
  
}


add2 <- function(x, y){
  x + y
}


above10 <- function(x){
  use <- x > 10
  x[use]
}

above <- function(x, n){
  use <- x > n
  x[use]
}


columnmean <- function(y){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[,i])
  }
  means
}


columnmean <- function(y, removeNA = TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[,i], na.rm = removeNA)
  }
  means
}