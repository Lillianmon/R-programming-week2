#scoping rules: symbol binding

#how does R know which value to assign to which symbol

#Lexical Scoping
f <- function(x, y){
  x^2 + y / z
}
#This function has 2 formal arguments x and y. Z is a free variable
#The scoping rules of a language determine how values are assigned to free variables
#free variables are not formal arguments and are not local variables

#lexical scoping in R means: the values of free variables are searched for in the environment in which the function was defined


#Example of Lexical scoping
y <- 10
f <- function(x){
  y <- 2
  y^2 + g(x)
}
g <- function(x){
  x*y
}

#f(3) = 130, y = 10, the value in the function g is looked up in the environment in which the function was defined (the global environment)
#However, in other languages they use dynamic scoping, in which the value of y is looked up in the environment from which the function was called, and y=2
