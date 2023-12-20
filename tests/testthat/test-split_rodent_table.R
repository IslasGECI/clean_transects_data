describe("Split transcet csv to higher normal forms", {
  complete_data <- readr::read_csv("/workdir/tests/data/Base_datos_roedores.csv", show_col_types = FALSE)
  it("Extract rodent traps information", {
    obtained <- get_rodent_traps_table(complete_data)
    obtained_number_cols <- ncol(obtained)
    expected_number_cols <- 4
    expect_equal(obtained_number_cols, expected_number_cols)
  })
})