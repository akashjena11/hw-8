source("~/Documents/Rstuff/hw-8/algo1/main/main.R")
library(testthat)

test_that("ks_test 1", {
  set.seed(3)
  x=inverse_sampling(100, pnorm, qnorm, mean=100, sd = 25)
  expect_gt(ks.test(x, pnorm, 100, 25)$p.value, 0.01)
})

test_that("ks_test 2", {
  set.seed(4)
  x=inverse_sampling(100, pnorm, mean=100, sd = 25)
  expect_gt(ks.test(x, pnorm, 100, 25)$p.value, 0.01)
})