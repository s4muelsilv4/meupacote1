# Ano em que o time teve menos vitórias -----------------------------------

# Transforme o código abaixo em uma função!

# Objetivo: função que retorna qual é a temporada em que o time teve menos
# vitórias. A função deve ser chamada 'encontrar_pior_ano_time()' e ter o
# argumento 'time'.


# Código original ----------------------------------------------

# library(tidyverse)
#
# time <- "Cruzeiro"
#
# "https://git.io/JOqUN" %>%
#   read_csv2() %>%
#   group_by(temporada, quem_ganhou) %>%
#   filter(quem_ganhou != "Empate", quem_ganhou %in% time) %>%
#   count(quem_ganhou, sort = TRUE, name = "n_vitorias") %>%
#   ungroup() %>%
#   filter(n_vitorias == min(n_vitorias)) %>%
#   rename("time" = quem_ganhou)

# Escreva abaixo sua função -------------------------------------------

#' Obtem o ano em que um time obteve pior desempenho
#'
#' @param time Um vetor de caracteres informando o nome do time
#'
#' @return retorna um data frame contedo tres colunas
#' @export
#'
#' @examples
#' encontrar_pior_ano_time("Flamengo")
encontrar_pior_ano_time <- function(time){
  partidas_brasileirao %>%
    dplyr::group_by(temporada, quem_ganhou) %>%
    dplyr::filter(quem_ganhou != "Empate", quem_ganhou %in% time) %>%
    dplyr::count(quem_ganhou, sort = TRUE, name = "n_vitorias") %>%
    dplyr::ungroup() %>%
    dplyr::filter(n_vitorias == min(n_vitorias)) %>%
    dplyr::rename("time" = quem_ganhou)
}


# Verificação -------------------------------------------------------------

# Use a função para ver se ela funciona!

# Qual é a temporada em que o Flamengo ganhou menos partidas? O resultado
# esperado é 2010!

# encontrar_pior_ano_time(time = "Flamengo")
