#' @title hello
#'
#' @description This is our hello world function
#'
#' @param first character The first name that is said hello to.
#' @param last character The last name.
#'
#' @export
#'
#' @examples
#' hello("Bryan")
#' hello("Bryan","McCloskey")
#' hello(last="McCloskey",first="Bryan")

hello <- function(first,last="Userbot") {
  print(paste0("Hello, ",first," ",last,"!"))
}
