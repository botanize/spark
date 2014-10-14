% Generated by roxygen2 (4.0.2): do not edit by hand
\name{spark.default}
\alias{spark.default}
\title{Spark line of a numeric vector on the terminal}
\usage{
\method{spark}{default}(data, width = c("data", "auto", "screen"),
  print = TRUE, ...)
}
\arguments{
\item{data}{The data to visualize. It can be a numeric
vector, or anything that can be cut into intervals
with \code{cut}. Infinite values in numeric data are ignored,
and a black character is plotted instead of them.}

\item{width}{The width (number of characters) of the output.
\sQuote{data} means that it will match the length of the data.
\sQuote{screen} means that it will be scaled to match the
width of the screen. \sQuote{auto} means \sQuote{data}
if the length of the data is not longer than the screen width,
and \sQuote{screen} otherwise.}

\item{print}{Whether to show the result on the screen. (If \code{FALSE},
it will be only returned.)}

\item{...}{Not used, it is an error if given.}
}
\value{
Character scalar containing the spark line.
}
\description{
Spark line of a numeric vector on the terminal
}
\examples{
## Annual number of Lynx trappings
cat(spark(lynx[1:getOption("width")]), "\\n")

## Luteinizing Hormone in Blood Samples,
## in blue, if the terminal supports it
cat(crayon::blue(spark(lh)), "\\n")
}
\seealso{
Other spark: \code{\link{spark.matrix}};
  \code{\link{spark}}
}
