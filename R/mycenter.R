
#' Subtract column means from columns of a matrix
#'
#'  Subtract the mean from the columns.
#'
#'  This utility function subtracts the mean from each of the columns.
#'
#' @param X a data matrix
#'
#' @return a centered matrix.
#'
#'
mycenter = function(X){
    X_centered = matrix(NaN, dim(X)[1], dim(X)[2])
    meanvec = mymeanvector(X)
    for(k in 1:dim(X)[2]){
        X_centered[,k] = X[,k] - meanvec[k]
    }
    return(X_centered)
}
