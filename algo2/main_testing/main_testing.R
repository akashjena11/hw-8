source("~/Documents/Rstuff/hw-8/algo2/main/main.R")
library(testthat)


test_that("Does rejection_sampling follow normal dist? Test 1", {
  set.seed(1234567890)
  x=rejection_sampling(100, dnorm, function(x) dt(x,1), function(n) rt(n,1), 1.52)
  expect_gt(ks.test(x, "pnorm", 0, 1)$p.value, 0.01)
})


test_that("Does rejection_sampling follow normal dist? Test 2", {
  set.seed(1234567890)
  x=rejection_sampling(100, dnorm, function(x) 1/2*exp(-abs(x)), function(n) 
    rexp(n,1)*(2*rbinom(n, 1, 0.5)-1), 1.32)
  expect_gt(ks.test(x, "pnorm", 0, 1)$p.value, 0.01)
})


