#' Wrapper functions for using rl7 in shiny
#'
#' Use \code{l7/-output()} to create a UI element, and \code{render_l7()}
#' to render the map widget.
#' @inheritParams htmlwidgets::shinyWidgetOutput
#' @param width,height the width and height of the chart
#' @export
l7_output <- function(outputId, width = '100%', height = '400px') {
  htmlwidgets::shinyWidgetOutput(outputId, 'l2', width, height, package = 'rl7')
}

#' use expr description from htmlwidgets to avoid bad inherit params code
#' @param expr An expression that generates l7 widget
#' @inheritParams htmlwidgets::shinyRenderWidget
#' @export
render_l7 <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, l7_output, env, quoted = TRUE)
}
