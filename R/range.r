#' Mutable ranges have a two methods (`train` and `reset`), and make
#' it possible to build up complete ranges with multiple passes.
#'
#' These range objects should be instantiated with
#' [continuous_range()] and [discrete_range()].
#'
#' @noRd

continuous_range <- function() {
  ContinuousRange$new()
}

discrete_range <- function() {
  DiscreteRange$new()
}
