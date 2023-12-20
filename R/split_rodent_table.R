get_rodent_traps_table <- function(raw_data) {
  raw_data |>
    dplyr::select(c("Sitio", "# Transecto", "Tipo de vegetación o cobertura", "Trampa")) |>
    unique()
}

get_rodent_captures <- function(raw_data) {
  raw_data |>
    dplyr::select(-"Tipo de vegetación o cobertura")
}
