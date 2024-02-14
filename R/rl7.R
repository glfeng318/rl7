#' L7Plot options
#'
#' opt param in rl7 is the PlotOptions for L7Plot.
#' You can construct an opt using function with `l7_` prefix and `l7_opt()`.
#' \url{https://l7plot.antv.antgroup.com/en/api} for details
#'
#' @param width optional number default: 400. width of the chart.
#' @param height optional number default: 400. height of the chart.
#' @param data required. Data frame for plot.
#' @param reflect Apply reflect transform to the coordinate of line plot. When reflect: 'y' is set, y-axis can be inverted; in the same way, you can set reflect: 'x' to invert x-axis, and invert x-axis and y-axis at the same time is also supported with 'c('x','y')'.
#' @param xField The name of the data field corresponding to the graph in the x direction, usually the field corresponding to the horizontal coordinate axis. For example, to see how many people are in different classes, the class field is the corresponding xField.
#' @param yField The name of the data field corresponding to the graph in the y direction, usually the field corresponding to the vertical coordinate axis. For example, to see the number of students in different classes, the number field is the corresponding yField.
#' @param colorField the name of the data field or color name or hex color code
#' @param seriesField grouping field
#' @param groupField grouping field
#' @param stackField stack field
#' @param sizeField size field
#' @param shapeField shape field
#' @param colorField color field
#' @param angleField angle field
#' @param binField bin field
#' @param setsField sets field
#' @param outliersField outliers field
#' @param measureField measure field
#' @param rangeField range field
#' @param sourceField source field
#' @param targetField target field
#' @param wordField word field
#' @param weightField weight field
#' @param rawFields raw fields
#' @param compareField compare field
#' @param percent percent
#' @param smooth TRUE/FALSE. whether the curve is smooth.
#' @param isStack to stack charts
#' @param isGroup to group charts
#' @param isPercent to percent charts
#' @param isRange to range charts
#'
#' @examples
#'
#' l7_scatter(mtcars, 'drat', 'wt') |>
#'   l7_opt(shape='circle', theme='dark') |>
#'   l7()
#'
#'
#' @name opt
NULL

#' l7
#'
#' l7() render a L7Plot
#'
#' @param opt L7Plot options build from plot function with prefix 'l7_' and 'l7_opt()'
#' @inherit opt
#' @family l7
#' @export
#' @examples
#' l7_liquid(0.6) |>
#'   l7_opt(pattern=list(type='line')) |>
#'   l7()
#'
#' l7_scatter(iris,'Sepal.Length','Sepal.Width',colorField='Species') |>
#'   l7_opt(
#'     legend=list(position='right'),
#'     shape='circle'
#'  ) |>
#'  l7()
#'
l7 <- function(opt, width=NULL, height=NULL) {
  if (is.null(opt$l7_chart)) {
    stop("invalid opt")
  }
  opt$source$data = jsonlite::toJSON(opt$source$data, auto_unbox = TRUE, null = 'null')
  x = list(opt=opt)
  # create the widget
  htmlwidgets::createWidget('l7', x, width = width, height = height, package='rl7')
}


#' l7_dot
#'
#' @family l7
#' @inherit opt
#'
#' @export
#'
#' @examples
#'
#'
l7_dot <- function(map, source) {
  list(
    l7_chart='dot',
    map=map,
    source=source
  )
}

#' l7_choropleth
#'
#' @param map map
#' @param sourcesource
#'
#' @export
#'
#' @examples
#' l7_choropleth(
#'   map= list(
#'     type='map',
#'     style='light',
#'     center=c(120.19382669582967, 30.258134),
#'     zoom=3,
#'     pitch=0
#'   ),
#'   source=list(
#'     data=data.frame(name=c('广东省','海南省'), value=c(100,50)),
#'     joinBy=list(
#'       sourceField='name',
#'       geoField='name'
#'     )
#'   )
#'   ) |>
#'     l7_opt(
#'       viewLevel=list(
#'         level='country',
#'         adcode=100000
#'       ),
#'       autoFit=TRUE,
#'       color=list(
#'         field='value',
#'         value=c('#B8E1FF', '#7DAAFF', '#3D76DD', '#0047A5', '#001D70'),
#'         scale=list(type='quantile')
#'       ),
#'       style=list(
#'         opacity=1,
#'         stroke='#ccc',
#'         lineWidth=0.6,
#'         lineOpacity=1
#'       ),
#'       label=list(
#'         visible=TRUE,
#'         field='name'
#'       )
#'     ) |> l7()
l7_choropleth <- function(map,source) {
  list(
    l7_chart='choropleth',
    map=map,
    source=source
  )
}

