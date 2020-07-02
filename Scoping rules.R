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
