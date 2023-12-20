describe("Split transcet csv to higher normal forms", {
  it("Split site table", {
    complete_data <- readr::read_csv("/workdir/tests/data/Base_datos_aves_para_CD.csv", show_col_types = FALSE)
    obtained <- get_site_table(complete_data)
    obtained_rows <- nrow(obtained)
    expected_rows <- 17
    expect_equal(obtained_rows, expected_rows)
  })
})
