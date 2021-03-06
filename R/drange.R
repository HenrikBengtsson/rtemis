# drange.R
# ::rtemis::
# 2016 Efstathios D. Gennatas egenn.github.io

#' Set Dynamic Range
#'
#' \code{rtemis preproc}: Adjusts the dynamic range of a vector or matrix input.
#'   By default normalizes to 0-1 range.
#'
#' @param x Numeric vector or matrix / data frame: Input
#' @param lo Target range minimum. Defaults to 0
#' @param hi Target range maximum. Defaults to 1
#' @param byCol Logical: If TRUE: if \code{x} is matrix, \code{drange} each column separately
#' @author Efstathios D. Gennatas
#' @examples
#' x <- runif(20, -10, 10)
#' x <- drange(x)
#' @export

drange <- function(x, lo = 0, hi = 1, byCol = TRUE) {

  dr <- function(x, lo, hi) {
   (x - min(x, na.rm = TRUE)) / max(x - min(x, na.rm = TRUE), na.rm = TRUE) * (hi - lo) + lo
  }

  if (NCOL(x) > 1) {
    x <- as.data.frame(x)
    if (byCol) {
      new.x <- sapply(x, function(x) dr(x, lo, hi))
    } else {
      new.x <- dr(x, lo, hi)
    }
  } else {
    new.x <- dr(x, lo, hi)
  }

  new.x

} # rtemis::drange
