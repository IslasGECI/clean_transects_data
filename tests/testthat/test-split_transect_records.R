describe("Split transcet csv to higher normal forms", {
  complete_data <- readr::read_csv("/workdir/tests/data/Base_datos_aves_para_CD.csv", show_col_types = FALSE)
  it("Split site table", {
    obtained <- get_site_table(complete_data)
    obtained_rows <- nrow(obtained)
    expected_rows <- 17
    expect_equal(obtained_rows, expected_rows)
    obtained_number_cols <- ncol(obtained)
    expected_number_cols <- 5
    expect_equal(obtained_number_cols, expected_number_cols)
    obtained_number_sites <- obtained$Sitio |>
      unique() |>
      length()
    expected_number_sites <- 6
    expect_equal(obtained_number_sites, expected_number_sites)
    obtained_number_claves <- obtained$`Clave Unidad de Muestreo` |>
      unique() |>
      length()
    expected_number_claves <- 7
    expect_equal(obtained_number_claves, expected_number_claves)
  })
  it("Split record events", {
    obtained <- split_count_records(complete_data)
    obtained_number_cols <- ncol(obtained)
    expected_number_cols <- 10
    expect_equal(obtained_number_cols, expected_number_cols)
    obtained_rows <- nrow(obtained)
    expected_rows <- 215
    expect_equal(obtained_rows, expected_rows)
  })
})
