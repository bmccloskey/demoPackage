func1 <- function(x){func2(x)}
func2 <- function(x){func3(x + 1)}
func3 <- function(x){func4(x + 4)}
func4 <- function(x){
  y = "a"
  x <- x + y
  return(x)
}
