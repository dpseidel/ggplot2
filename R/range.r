#' Mutable ranges have a two methods (`train` and `reset`), and make
#' it possible to build up complete ranges with multiple passes.
#'
#' These range objects should be instantiated with
#' [continuous_range()] and [discrete_range()].
#'
#' @noRd

RangeDiscrete <- R6::R6Class(
  "DiscreteRange",
  inherit = Range,
  list(
    train = function(x, drop = FALSE, na.rm = FALSE) {
      self$range <- train_discrete(x, self$range, drop, na.rm)
    },
    reset = function() self$range <- NULL
  )
)

continuous_range <- function() {
  ContinuousRange$new()
}

discrete_range <- function() {
  RangeDiscrete$new()
}
