% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions-chebyshev.r
\name{cheb_scale}
\alias{cheb_scale}
\title{Scaling of X-Axis (as vector or as scalar) to [-1,1]}
\usage{
cheb_scale(x_axis, x_val = NA)
}
\arguments{
\item{x_axis}{urspruengliche beliebige X-Achse (Vektor)}

\item{x_val}{Einzelwert auf X-Achse (Skalar)}
}
\value{
x_cheb_scaled Abhaengig von Eingangsparametern: Skalierte X-Achse (Vektor) oder skalierter Einzelwert anhand vorgegebener X-Achse
}
\description{
\code{cheb_scale} skaliert beliebige X-Achse auf Achse, die fuer Polynom-fits vertraeglich ist.
}
