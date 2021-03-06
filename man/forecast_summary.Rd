% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/experimental.R
\name{forecast_summary}
\alias{forecast_summary}
\title{forecast_summary (TO BE DEPRECATED SOON!)}
\usage{
forecast_summary(
  input_dir,
  r = NULL,
  p = NULL,
  threshold,
  start_date,
  end_date,
  obs = NULL,
  origin = "FWI",
  index = "fwi"
)
}
\arguments{
\item{input_dir}{folder containing forecast files}

\item{r}{Raster* object containing the forecasts}

\item{p}{SpatialPolygon* identifying the area affected by fires.}

\item{threshold}{danger threshold calculated using the function
\code{DangerLevels()}, usually the high danger level.}

\item{start_date}{date when observations start}

\item{end_date}{date when observations end}

\item{obs}{observations, it can either be a file path or a RasterStack/Brick}

\item{origin}{This is the rating system of interest:
fwi (default, currently called cfwis), mark5, nfdrs.}

\item{index}{This is the index to analyse
(default is fwi, belonging to fwi origin).}
}
\description{
Plot observations versus forecast
}
\examples{
\dontrun{
  forecast_summary(input_dir = "forecast",
                    p = fireBBOX,
                    threshold = 14,
                    start_date = "2017-06-01", end_date = "2017-06-30",
                    obs = "CAMS_2017-06-01_2017-06-19_frpfire.nc")
}

}
