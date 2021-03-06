% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layers.R
\name{Dense}
\alias{Dense}
\title{Create a Dense layer with `in_size` inputs and `out_size` outputs using `act` activation function}
\usage{
Dense(in_size, out_size, act = c("identity", "sigmoid", "tanh", "relu"))
}
\arguments{
\item{in_size}{Input size}

\item{out_size}{Output size}

\item{act}{Activation function}
}
\value{
A list with the following content
\itemize{
     \item in_size - Input Size
     \item out_size - Output Size
     \item activation - Activation Function
     \item julia - Julia code representing the Layer
}
}
\description{
Create a Dense layer with `in_size` inputs and `out_size` outputs using `act` activation function
}
