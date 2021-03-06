% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gr-TPS.R
\name{tps_grid}
\alias{tps_grid}
\title{Deformation grids using Thin Plate Splines}
\usage{
tps_grid(fr, to, amp = 1, over = 1.2, grid.size = 15,
  grid.col = "grey80", poly = TRUE, shp = TRUE, shp.col = rep(NA, 2),
  shp.border = col_qual(2), shp.lwd = c(1, 1), shp.lty = c(1, 1),
  legend = TRUE, legend.text, ...)
}
\arguments{
\item{fr}{the reference \eqn{(x; y)} coordinates}

\item{to}{the target \eqn{(x; y)} coordinates}

\item{amp}{an amplification factor of differences between \code{fr} and
\code{to}}

\item{over}{\code{numeric} that indicates how much the thin plate splines
extends over the shapes}

\item{grid.size}{\code{numeric} to specify the number of grid cells on the
longer axis on the outlines}

\item{grid.col}{color for drawing the grid}

\item{poly}{whether to draw polygons (for outlines) or points (for landmarks)}

\item{shp}{\code{logical}. Whether to draw shapes}

\item{shp.col}{Two colors for filling the shapes}

\item{shp.border}{Two colors for drawing the borders}

\item{shp.lwd}{Two \code{lwd} for drawing shapes}

\item{shp.lty}{Two \code{lty} fro drawing the shapes}

\item{legend}{logical whether to plot a legend}

\item{legend.text}{some text for the legend}

\item{...}{additional arguments to feed \link{coo_draw}}
}
\value{
Nothing
}
\description{
\code{tps_grid} calculates and plots deformation grids between two
configurations.
}
\examples{
botF <- efourier(bot)
x <- MSHAPES(botF, 'type', nb.pts=80)$shp
fr <- x$beer
to <- x$whisky
tps_grid(fr, to, amp=3, grid.size=10)
}
\seealso{
Other thin plate splines: \code{\link{tps2d}},
  \code{\link{tps_arr}}, \code{\link{tps_iso}},
  \code{\link{tps_raw}}
}
