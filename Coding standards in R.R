#Coding Standards in R
#1. Always use text files/text editor
#2. Indent your code
#3. Limit the width of code (~80 columns)

#Dates and times in R
#Dates are represented by the Date clas
#Times are represented by the POSIXct or the POSTXlt class
#Dates are stored internally as the number of days since 1970-01-01
#Times are stored internally as the number of seconds since 1970-01-01

x <- as.Date("1970-01-01")
x 
unclass(x) #1
unclass(as.Date("1970-01-02")) #2

x <- Sys.time()
p <- as.POSIXlt(x)
names(unclass(p))
p$sec

x <- Sys.time()
x ##Already in 'POSIXct' format
unclass(x)
x$Sec ##Error, $ is invalid for atomic vectors
p<- as.POSIXlt(x)
p$sec