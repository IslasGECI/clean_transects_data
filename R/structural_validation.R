check_structure <- function(datapackage_path = "/workdir/tests/data/datapackage.json") {
  system(glue::glue("goodtables {datapackage_path} > /workdir/structural_errors.txt"))
}
