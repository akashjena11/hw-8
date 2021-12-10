source("~/Documents/Rstuff/hw 8/algo 2/headers/headers.R")
library(testthat)

test_that("def_env_const test 1", {
  expect_lt(def_env_const( dnorm, function(x) 1/pi/(1+x^2)), 1.521)
})

test_that("def_env_const test 2", {
  expect_lt(def_env_const( dexp, function(x) 1/(1+x)^2), 1.472)
})