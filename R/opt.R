#' l7_opt
#'
#' @param opt L7Plot options
#' @param ...  more options
#'
#' @export
#'
#' @examples
#' l7_opt(list(), map=list(map="mapbox", zoom=3, pitch=0), source=list(...))
#'
#'
l7_opt <- function(opt, ...) {
  c(opt, list(...))
}
