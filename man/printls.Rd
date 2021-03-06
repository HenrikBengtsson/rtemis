% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/printls.R
\name{printls}
\alias{printls}
\title{Pretty print list}
\usage{
printls(x, prefix = "", pad = 3, center.title = TRUE, title = NULL,
  title.newline = FALSE, newline.pre = FALSE, color = NULL)
}
\arguments{
\item{x}{list or object that will be converted to a list}

\item{prefix}{String: Optional prefix for names}

\item{pad}{Integer: Pad output with this many spaces. Default = 2}

\item{center.title}{Logical: If TRUE, autopad title for centering, if present. Default TRUE}

\item{color}{\code{crayon} color to be applied when printing values. Default = NULL (do not use \code{crayon})}
}
\description{
Pretty print a list (or data frame) recursively
}
\details{
Data frames in R began life as lists
}
\author{
Efstathios D. Gennatas
}
