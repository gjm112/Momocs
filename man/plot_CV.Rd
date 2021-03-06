% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gr-LDA.R
\name{plot_CV}
\alias{plot_CV}
\alias{plot_CV.default}
\alias{plot_CV.LDA}
\title{Plots a cross-validation table as an heatmap}
\usage{
plot_CV(x, ...)

\method{plot_CV}{default}(x, freq = FALSE, rm0 = TRUE, cex = 5,
  round = 2, labels = TRUE, ...)

\method{plot_CV}{LDA}(x, freq = FALSE, rm0 = TRUE, cex = 5, round = 2,
  labels = TRUE, ...)
}
\arguments{
\item{x}{a (cross-validation table) or an LDA object}

\item{...}{only used for the generic}

\item{freq}{logical whether to display frequencies or counts}

\item{rm0}{logical whether to remove zeros}

\item{cex}{numeric to adjust labels in every cell. NA to remove them}

\item{round}{numeric, when freq=TRUE how many decimals should we display}

\item{labels}{logical whether to display freq or counts as text labels}
}
\value{
a ggplot object
}
\description{
Either with frequencies (or percentages) plus marginal sums,
and values as heatmaps. Used in Momocs for plotting cross-validation tables
but may be used for any table (likely with \code{freq=FALSE}).
}
\examples{
ol <- LDA(PCA(opoly(olea, 5)), "domes")
# freq=FALSE inspired by Chitwood et al. New Phytol fig. 4
gg <- plot_CV(ol, freq=FALSE)
gg

# and you can tune the gg object wit regular ggplot2 syntax eg
gg + ggplot2::scale_color_discrete(h = c(120, 240))

# freq=TRUE
plot_CV(ol, freq=TRUE)
}
\seealso{
\link{LDA}, \link{plot.LDA}, and (pretty much the same) \link{plot_table}.
}
