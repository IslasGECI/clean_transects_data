check_structure <- function(csv_path) {
  system("goodtables /workdir/tests/data/datapackage.json > /workdir/structural_errors.txt")
}
