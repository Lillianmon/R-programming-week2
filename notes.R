#control Structure
if, else #testing a condition
for: #execute a loop while a condition is true
while #execute a loop while a condition is true
repeat #execute an infinite loop
break # break the execution of a loop
next #skip an interation of a loop
return #exit a function



#if-else
if (x > 3){
  y <- 10
}else{
  y <- 0
}
#or
y <- if(x > 3){
  10
}else {
    0
}

if(){}else if(){}else{}


#for loops
for(i in 1:10){
  print(i)
}

x <- c("a", "b", "c", "d")
for(i in 1:4){
  print(x(i))
}
for(i in seq_along(x)){
  print(x(i))
}
for(letter in x){
  printer(letter)
}
for(i in 1:4) print(x(i))

#nested for loops
x <- matrix(1:6, 2, 3)
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x(i,j))
  }
}


#while loop
#while loop begin by testing a condition, if it is true, then they execute the loop body.
#once the loop body is executed, the condition is tested again
count <- 0
while(count < 10){
  print(count)
  count <- count + 1
}

z <- 5
while(z >= 3 && z <= 10){
  print(z)
  coin <- rbinom(1, 1, 0.5)
  
  if(coin == 1){
    z <- z + 1
  }else{
    z <- z - 1
  }
}


#repeat
#repeat initiates an infinite loop, the only way to exit a repeat loop is to call break

x0 <- 1
tol <- 1e-8

repeat{
  x1 <- computeEstimate()
  if(abs(x1 - x0) < tol){
    break
  }else{
    x0 <- x1
  }
}


#next
#next is used to skip an iteration of a loop
for(i in 1:100){
  if(i <= 20){
    ##skip the first 20 iterations
    next
  } ##do something here
}

#return
#return signals that a function should exit and return a given value









