
#' Compute correlation matrix
#'
#' Creates a correlation matrix.
#'
#' This function creats a correlation matrix from a data matrix.
#'
#' @param X data matrix
#'
#' @return a correlation matrix
#' @export
#'
#' @examples
#' X = matrix(runif(4*4), 4, 4); mycorrelation(X)
#'
mycorrelation = function(X){
    biascov = mycovariance(X)
    correlation = biascov
    for(j in 1:dim(X)[2]){
        for(k in j:dim(X)[2]){
            correlation[j,k] = biascov[j,k]/sqrt(biascov[j,j]*biascov[k,k])
            if(j!=k){
                correlation[k,j] = correlation[j,k]
            }
        }
    }
    return(correlation)
}
