#' @export
hello_fixed <- function() {
  x = iris
  x$Pétala = 'Á'
  x$Mácula = 'Ê'

  x
}

#' @export
hello <- function() {
  x = iris
  x$Pétala = 'Á'
  x$Cáéíóúãõça = 'Çà'

  x
}

# eventos_semana_mes_ano --------------------------------------------------
#' @export
tabela.eventos_semana_mes_ano = function(resumida, visao_periodo = 'Semana', visao_operacao = 'Operação') {
  tabela =
    resumida %>%
    group_by_at(c('Dia', visao_operacao, 'Evento')) %>%
    mutate(Veículos2 = sum(Veículos)) %>%
    # View()
    group_by_at(c(visao_periodo, visao_operacao, 'Evento')) %>%
    summarise(
      Veículos = max(Veículos2) %>% round(),
      Dias_ativos = n_distinct(Dia),
      Total = sum(Total),
      Média_veículo = Total / Veículos,
      Média_veículo_dia = Média_veículo / Dias_ativos
    ) %>%
    ungroup()

  tabela =
    tabela %>%
    mutate(
      across(where(is.numeric), function(x) round(x = x, digits = 3))
    )

  tabela
}

