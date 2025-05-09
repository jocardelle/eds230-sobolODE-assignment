#' Logistic forest biomass growth derivative
#' @param time Time since start
#' @param C size of forest in units of car
#' @param parms - as list with two values, r, K, g, thresh, g
#' @param thresh Canopy Closure threshold in units of carbon
#' @param r exponential growth rate
#' @param g linear growth rate
#' @param K carrying capacity
#' @return Derivative of forest size with time

dforestgrowth <- function(time, C, parms) {
  if (C < parms$thresh) {
    dC <- parms$r * C
    return(list(dC))
  } else {
  dC <- parms$g * (1 - C / parms$K)
  return(list(dC))
  }
}


  
  