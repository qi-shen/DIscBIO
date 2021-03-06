% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/internal-functions-samr-adapted.R
\name{resa}
\alias{resa}
\title{Resampling}
\usage{
resa(x, d, nresamp = 20)
}
\arguments{
\item{x}{data matrix. nrow=#gene, ncol=#sample}

\item{d}{estimated sequencing depth}

\item{nresamp}{number of resamplings}
}
\value{
xresamp: an rank array with dim #gene*#sample*nresamp
}
\description{
Corresponds to `samr::resample`
}
