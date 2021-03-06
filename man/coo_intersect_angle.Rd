% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coo-utilities.R
\name{coo_intersect_angle}
\alias{coo_intersect_angle}
\alias{coo_intersect_direction}
\alias{coo_intersect_direction.default}
\alias{coo_intersect_direction.Coo}
\title{Nearest intersection between a shape and a segment specified with an angle}
\usage{
coo_intersect_angle(coo, angle = 0)

coo_intersect_direction(coo, direction = c("down", "left", "up", "right")[4])

\method{coo_intersect_direction}{default}(coo, direction = c("down", "left",
  "up", "right")[4])

\method{coo_intersect_direction}{Coo}(coo, direction = c("down", "left", "up",
  "right")[4])
}
\arguments{
\item{coo}{\code{matrix} of \code{(x; y)} coordinates or any \link{Coo} object.}

\item{angle}{\code{numeric} an angle in radians (0 by default).}

\item{direction}{\code{character} one of \code{"down", "left", "up", "right"} ("right" by default)}
}
\value{
\code{numeric} the id of the nearest point or a \code{list} for \code{Coo} See examples.
}
\description{
Take a shape, and segment starting on the centroid and having a particular angle, which point is the nearest
where the segment intersects with the shape?
}
\note{
shapes are always centered before this operation. If you need a simple
direction such as \code{(down, left, up, right)ward}, then use \link{coo_intersect_direction} which
does not need to find an intersection but relies on coordinates and is about 1000.
}
\examples{
coo <- bot[1] \%>\% coo_center \%>\% coo_scale
coo_plot(coo)
coo \%>\% coo_intersect_angle(pi/7) \%>\%
   coo[., , drop=FALSE] \%>\% points(col="red")

 # many angles
 coo_plot(coo)
 sapply(seq(0, pi, pi/12),
       function(x) coo \%>\% coo_intersect_angle(x)) -> ids
 coo[ids, ] \%>\% points(col="blue")

 coo \%>\%
 coo_intersect_direction("down") \%>\%
 coo[.,, drop=FALSE] \%>\% points(col="orange")

}
\seealso{
Other coo_ intersect: \code{\link{coo_intersect_segment}}
}
