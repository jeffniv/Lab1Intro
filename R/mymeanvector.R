
#' mymeanvector
#'
#' Calculate a mean vector.
#'
#' This function calculates a mean vector.
#'
#' @param X a data matrix
#'
#' @return a mean vector
#' @export
#'
#' @examples
#' X = matrix(runif(4*4), 4, 4); mymeanvector(X)
mymeanvector = function(X){
    meanvec = apply(X, 2, mymean)
    return(meanvec)
}
