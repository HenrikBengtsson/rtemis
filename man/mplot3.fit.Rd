% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mplot3.xy.R
\name{mplot3.fit}
\alias{mplot3.fit}
\title{\code{mplot3}: True vs. Fitted plot}
\usage{
mplot3.fit(x, y, fit = "lm", se.fit = TRUE, fit.error = TRUE,
  axes.equal = TRUE, diagonal = TRUE,
  theme = getOption("rt.fit.theme", "lightgrid"), col = NULL,
  zero.lines = FALSE, fit.legend = FALSE, ...)
}
\arguments{
\item{x}{Vector, numeric / factor / survival for regression, classification, survival: True values}

\item{y}{Vector, numeric / factor / survival for regression, classification, survival: Predicted values}

\item{fit}{String: \pkg{rtemis} model to calculate y ~ x fit. Options: see \code{modSelect}
Can also be Logical, which will give a GAM fit if TRUE. If you specify "NLA", the activation function should
be passed as a string.}

\item{se.fit}{Logical: If TRUE, draw the standard error of the fit}

\item{axes.equal}{Logical: Should axes be equal? Defaults to FALSE}

\item{theme}{String: "light", "dark", "lightgrid", "darkgrid", "lightbox", "darkbox"
Default = "lightgrid" if no default \code{"rt.fit"} is set using \code{options}.
You can set a system-wide default in your \code{.Rprofile} by including a line like
options(rt.theme = 'lightgrid')}

\item{zero.lines}{Logical: If TRUE, draw lines at x = 0 and y = 0}

\item{...}{Additional argument to be passed to \link{mplot3.conf} (classification) or \link{mplot3.xy} (regression)}
}
\description{
An \code{mplot3.xy} alias with defaults for plotting a learner's performance
}
