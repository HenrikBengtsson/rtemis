% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/u.SPEC.R
\name{u.SPEC}
\alias{u.SPEC}
\title{Spectral Clustering}
\usage{
u.SPEC(x, k = 2, kernel = "rbfdot", kpar = "automatic",
  nystrom.red = FALSE, nystrom.sample = dim(x)[1]/6,
  iterations = 200, mod.sample = 0.75, na.action = na.omit,
  verbose = TRUE, ...)
}
\arguments{
\item{x}{Input matrix / data.frame}

\item{k}{Integer: Number of clusters to get}

\item{kernel}{String: Kernel to use: "rbfdot", "polydot", "vanilladot", tanhdot", "laplacedot", "besseldot",
"anovadot", "splinedot", "stringdot"}

\item{kpar}{String OR List: "automatic", "local" OR list with: sigma (for "rbfdor", "laplacedot");
degree, scale, offset (for "polydot");
scale, offset (for "tanhdot");
sigma, order, degree (for "besseldot");
sigma, degree (for "anovadot");
length, lambda, normalized (for "stringdot")}

\item{nystrom.red}{Logical: if TRUE, use nystrom method to calculate eigenvectors (Default = FALSE)}

\item{nystrom.sample}{Integer: Number of points to use for estimating the eigenvalues when \code{nystrom.red = TRUE}
Default = \code{dim(x)[1]/6}}

\item{iterations}{Integer: Number of iterations allowed}

\item{mod.sample}{Float (0, 1): Proportion of data to use when estimating sigma. Default = .75}

\item{na.action}{Function: Action to perform on NA (Default = \code{na.omit})}

\item{verbose}{Logical: If TRUE, print messages to screen}

\item{...}{Additional parameters to be passed to \code{flexclust::cclust}}
}
\description{
Perform Spectral Clustering using \code{kernlab::specc}
}
\seealso{
Other Clustering: \code{\link{u.CMEANS}},
  \code{\link{u.EMC}}, \code{\link{u.H2OKMEANS}},
  \code{\link{u.HARDCL}}, \code{\link{u.HOPACH}},
  \code{\link{u.KMEANS}}, \code{\link{u.NGAS}},
  \code{\link{u.PAMK}}, \code{\link{u.PAM}}
}
\author{
Efstathios D. Gennatas
}
\concept{Clustering}
