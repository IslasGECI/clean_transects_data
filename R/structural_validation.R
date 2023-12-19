check_structure <- function(csv_path) {
  temporal_csv <- "/workdir/tests/data/csv_to_validate.csv"
  system(glue::glue("cp {csv_path} {temporal_csv}"))
  errors_path <- "/workdir/structural_errors.txt"
  system(glue::glue("goodtables /workdir/tests/data/datapackage.json > {errors_path}"))
  testtools::delete_output_file(temporal_csv)
  error_count_string <- system(glue::glue("cat {errors_path} | grep error-count"), intern = TRUE)
  is_valid <- all(stringr::str_detect(error_count_string, "0"))
  if (is_valid) {
    testtools::delete_output_file(errors_path)
  } else {
    stop("🔴🚨 Structural error. Check file structural_errors.txt for details")
  }
}
