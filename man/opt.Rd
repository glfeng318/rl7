% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rl7.R
\name{opt}
\alias{opt}
\title{L7Plot options}
\arguments{
\item{width}{optional number default: 400. width of the chart.}

\item{height}{optional number default: 400. height of the chart.}

\item{data}{required. Data frame for plot.}

\item{reflect}{Apply reflect transform to the coordinate of line plot. When reflect: 'y' is set, y-axis can be inverted; in the same way, you can set reflect: 'x' to invert x-axis, and invert x-axis and y-axis at the same time is also supported with 'c('x','y')'.}

\item{xField}{The name of the data field corresponding to the graph in the x direction, usually the field corresponding to the horizontal coordinate axis. For example, to see how many people are in different classes, the class field is the corresponding xField.}

\item{yField}{The name of the data field corresponding to the graph in the y direction, usually the field corresponding to the vertical coordinate axis. For example, to see the number of students in different classes, the number field is the corresponding yField.}

\item{seriesField}{grouping field}

\item{groupField}{grouping field}

\item{stackField}{stack field}

\item{sizeField}{size field}

\item{shapeField}{shape field}

\item{colorField}{color field}

\item{angleField}{angle field}

\item{binField}{bin field}

\item{setsField}{sets field}

\item{outliersField}{outliers field}

\item{measureField}{measure field}

\item{rangeField}{range field}

\item{sourceField}{source field}

\item{targetField}{target field}

\item{wordField}{word field}

\item{weightField}{weight field}

\item{rawFields}{raw fields}

\item{compareField}{compare field}

\item{percent}{percent}

\item{smooth}{TRUE/FALSE. whether the curve is smooth.}

\item{isStack}{to stack charts}

\item{isGroup}{to group charts}

\item{isPercent}{to percent charts}

\item{isRange}{to range charts}
}
\description{
opt param in rl7 is the PlotOptions for L7Plot.
You can construct an opt using function with \code{l7_} prefix and \code{l7_opt()}.
\url{https://l7plot.antv.antgroup.com/en/api} for details
}
\examples{

l7_scatter(mtcars, 'drat', 'wt') |>
  l7_opt(shape='circle', theme='dark') |>
  l7()


}
