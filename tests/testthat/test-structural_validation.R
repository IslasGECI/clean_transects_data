describe("Validate structure", {
  it("write structural errors", {
    csv_path <- "/workdir/tests/data/fail_structural_validation.csv"
    output_file <- "/workdir/structural_errors.txt"
    testtools::delete_output_file(output_file)
    check_structure(csv_path)
    expect_true(testtools::exist_output_file(output_file))
    testtools::delete_output_file(output_file)
  })
})
