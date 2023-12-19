describe("Validate structure", {
  it("write structural errors", {
    output_file <- "/workdir/structural_errors.txt"
    testtools::delete_output_file(output_file)
    check_structure()
    expect_true(testtools::exist_output_file(output_file))
  })
})
