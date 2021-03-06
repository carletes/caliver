% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anomaly.R
\name{anomaly}
\alias{anomaly}
\title{anomaly}
\usage{
anomaly(r, clima)
}
\arguments{
\item{r}{is the RasterLayer to compare to the climatology.}

\item{clima}{RasterBrick containing the climatological information.}
}
\description{
This function calculates the anomaly (number of standard
deviations from the mean climatology) of a forecast layer.
}
\details{
\code{r} and \code{clima} should have the same extent.
More information on anomaly is available here:
https://bit.ly/2Qvekz4. To estimate fire climatology one can use hindcast or
reanalysis data. Examples of the latter are available from Zenodo:
https://zenodo.org/communities/wildfire.
}
\examples{
\dontrun{
  r <- brick("cfwis_ffwi_20170101_1200_00.nc")[[1]]
  clima <- brick("fwi.nc")
  x <- anomaly(r, clima)

  # This plots nicely using rasterVis::levelplot(), in example on GWIS
  # (\url{https://gwis.jrc.ec.europa.eu}
  rasterVis::levelplot(x, col.regions = colorRamps::matlab.like(n = 11))
}

}
