% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mode-finding.R
\name{opt.Descent}
\alias{opt.Descent}
\title{Standard gradient descent}
\usage{
opt.Descent(eta = 0.1)
}
\arguments{
\item{eta}{stepsize}
}
\value{
list containing
\itemize{
    \item `julivar` - julia variable holding the optimiser
    \item `juliacode` - string representation
}
}
\description{
Standard gradient descent
}
