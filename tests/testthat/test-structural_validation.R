describe("Validate structure", {
  it("write structural errors", {
    csv_path <- "/workdir/tests/data/fail_structural_validation.csv"
    output_file <- "/workdir/structural_errors.txt"
    testtools::delete_output_file(output_file)
    expect_error(check_structure(csv_path), "🔴🚨 Structural error. Check file structural_errors.txt for details")
    expect_true(testtools::exist_output_file(output_file))
    testtools::delete_output_file(output_file)
  })
  it("write structural errors", {
    csv_path <- "/workdir/tests/data/valid_structural_validation.csv"
    output_file <- "/workdir/structural_errors.txt"
    testtools::delete_output_file(output_file)
    check_structure(csv_path)
    expect_false(testtools::exist_output_file(output_file))
  })
})
