context("pH values")
test_that("is_valid_pH function exists", {
  expect_true(is.function(is_valid_pH))
})

test_that("invalid pH returns FALSE", {
  expect_false(is_valid_pH(22))
})

test_that("negative pH is FALSE", {
  expect_false(is_valid_pH(-2))
})

test_that("edge cases are TRUE", {
  expect_true(is_valid_pH(0))
  expect_true(is_valid_pH(14))
})

test_that("NA returns NA", {
  expect_equal(is_valid_pH(NA),NA)
})

test_that("handles vectors correctly",{
  expect_equal(is_valid_pH(-1:15),c(FALSE,rep(TRUE,15),FALSE))
})
