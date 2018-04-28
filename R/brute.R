#' Brute force hello world
#'
#' This function provides a method to print the string \code{Hello, World} using
#' brute force.
#'
#' @examples
#' brute()
#'
#' @export
brute <- function() {
  target <- c("H", "e", "l", "l", "o", ",", " ", "W", "o", "r", "l", "d")
  tar_len <- length(target)
  string <- rep("", tar_len)

  i <- 1

  while (i < tar_len + 1) {
    if (string[i] != target[i]) {
      string[i] <- rawToChar(as.raw(sample(32:126, 1)))
    }

    if (string[i] == target[i]) {
      i <- i + 1
    }

    x <- 1
    cat("\n")
    while (x < length(string) + 1) {
      cat(string[x], sep = "")
      x <- x + 1
    }
    Sys.sleep(0.01)
  }
}
