# boxcat.R
# ::rtemis::
# 2019 Efstathios D. Gennatas egenn.github.io

#' Box cat
#'
#' \code{cat} with a box; a boxed cat
#'
#' @param x String: Text to be output to console
#' @param style  Integer: {1, 2}: 1: vintage style, 2: modern style. Default = 2
#' @param col Color: Any color support by \pkg{crayon}
#' @param newline.pre Logical: If TRUE, start with a new line. Default = TRUE
#' @param pad Integer: Pad message with this many spaces on the left. Default = 0
#' @author Efstathios D. Gennatas
#' @export

boxcat <- function(x,
                   style = 2,
                   col = NULL,
                   newline.pre = TRUE,
                   newline = FALSE,
                   pad = 0) {

  x <- as.character(x)
  if (newline.pre) cat("\n")
  if (style == 1) {
    x.len <- nchar(x)
    cat(rep(" ", pad), sep = "")
    cat(rep("-", x.len + 4), " \n| ", sep = "")
    if (!is.null(col)) {
      col <- getFromNamespace(col, "crayon")
      cat(col(x))
    } else {
      cat(x)
    }
    cat(" |\n", rep("-", x.len + 4), "\n", sep = "")
  } else {
    csb <- silver$bold
    cat(rep(" ", pad), sep = "")
    cat(csb("[[ "))
    if (!is.null(col)) {
      col <- getFromNamespace(col, "crayon")
      cat(col$bold(x))
    } else {
      cat(bold(x))
    }
    cat(csb(" ]]\n"))
  }
  if (newline) cat("\n")

} # rtemis::boxcat
