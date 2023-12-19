describe("Validate structure", {
  it("write structural errors", {
    csv_path <- "/workdir/tests/data/fail_structural_validation.csv"
    check_structure(csv_path)
  })
})
