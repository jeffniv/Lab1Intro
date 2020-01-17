

#' mymean(x)
#'
#' Calculate the mean of a vector.
#'
#' This utility function calculates the mean of a vector.
#'
#' @param x a vector
#'
#' @return mean of the vector
#'
#' @examples
#'
#' x=rnorm(10); mymean(x)
#'
mymean = function(x){
    return(sum(x)/length(x))
}

