% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_perc_risk_index.R
\name{get_perc_risk_index}
\alias{get_perc_risk_index}
\title{get_perc_risk_index}
\usage{
get_perc_risk_index(r_stack, p_shape, perc_val = 75, mod = "gt")
}
\arguments{
\item{r_stack}{is the raster or raster stack}

\item{p_shape}{is the shapefile on which to aggregate the values}

\item{perc_val}{is the percentile value used as a threshold}

\item{mod}{defines if the values considered for the mean are above (gt) or
below (lt) the threshold}
}
\description{
Generates the mean of the values over a certain percentile
threshold for the portion of the Raster* that intersects a polygon
}
\examples{
\dontrun{
  r.index <- get_perc_risk_index(r_stack = r_stack, p_shape = poly,
                              perc_val = 50, mod = "lt")
}

}
