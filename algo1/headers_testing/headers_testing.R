source("~/Documents/Rstuff/hw-8/algo1/headers/def_cdf_inv.R")
library(testthat)

test_that("def_cdf_inv testing", {
  vect=c(0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9)
  for(x in vect){
    y=def_cdf_inv(pnorm, mean=100, sd=25)(x, mean=100, sd = 25)
    z=qnorm(x, mean = 100, sd = 25)
    expect_equal(y,z)
  }
})