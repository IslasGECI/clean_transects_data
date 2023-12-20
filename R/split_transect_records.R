get_site_table <- function(raw_data) {
  raw_data |>
    dplyr::select(c("Sitio", "Clave Unidad de Muestreo", "Longitud del transecto (m)", "Tipo de vegetación o cobertura", "# punto o transecto")) |>
    dplyr::distinct()
}
