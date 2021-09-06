test_that("encontrar_pior_ano_time funciona", {

  expect_equal(encontrar_pior_ano_time("Flamengo"),
               dplyr::tibble(temporada=2010,
                      time="Flamengo",
                      n_vitorias=9))

  expect_type(encontrar_pior_ano_time("Flamengo"),"list")
})


