hello_fixed <- function() {
  x = iris
  x$`Pétala` = 'Á'
  x$`Mácula` = 'Ê'
  x$`Pãõáéíóúçàâêô` = 'Ç'

  x
}



hello <- function() {
  x = iris
  x$Pétala = 'Á'
  x$Mácula = 'Ê'
  x$Pãõáéíóúçàâêô = 'Ç'

  x
}

