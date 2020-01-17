
#' Compute covariance matrix
#'
#' Creates a covariance matrix
#'
#' This function creates a covariance matrix from a data matrix.
#'
#' @param X data matrix
#'
#' @return a covariance matrix
#' @export
#'
#' @examples
#' X = matrix(runif(4*4), 4, 4); mycovariance(X)
mycovariance = function(X){
    X_centered = mycenter(X)
    covariance = matrix(NaN, dim(X)[2], dim(X)[2])
    for(j in 1:dim(X)[2]){
        for(k in j:dim(X)[2]){
            covariance[j,k] = X_centered[,j]%*%X_centered[,k]
            if(j!=k){
                covariance[k,j] = covariance[j,k]
            }
        }
    }
    covariance = (1/dim(X)[1])*covariance
    return(covariance)
}
