test_that("str_split_comma() splits a string on commas", {
  expect_equal(str_split_comma("a,b,c"), c("a", "b", "c"))
})

test_that("str_split_comma() does not split non-commas", {
  expect_equal(str_split_comma("a.b.c"), c("a.b.c"))
})

test_that("str_split_nums() splits a string and converts to numeric", {
  expect_equal(str_split_nums("1,2,3", pattern = ","), c(1, 2, 3))
})

test_that("str_split_nums() gives a warning for non-numbers", {
  expect_equal(str_split_nums("a,2,3", pattern = ","), c(NA, 2, 3))
  expect_warning(str_split_nums("a,2,3", pattern = ","))
})