## code to prepare `partidas_brasileirao` dataset goes here

# web file
partidas_brasileirao <- readr::read_csv2("https://git.io/JOqUN")
# local file
# partidas_brasileirao <- readr::read_csv2("./data-raw/partidas_brasileirao.csv")

usethis::use_data(partidas_brasileirao, overwrite = TRUE)
