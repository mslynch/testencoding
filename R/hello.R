#' @export
hello_fixed <- function() {
  x = iris
  x$`Pétala` = 'Á'
  x$`Mácula` = 'Ê'

  x
}

#' @export
hello <- function() {
  x = iris
  x$Pétala = 'Á'
  # x$Mácula = 'Ê'

  x
}

