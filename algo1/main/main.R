source("~/Documents/Rstuff/hw 8/algo 1/headers/def_cdf_inv.R")

inverse_sampling = function(n,cdf,cdf_inv,...){
  
  if(missing(cdf_inv)){
    writeLines("cdf_inv not supplied, numerical root finding utilized, this is inefficient\n")
    cdf_inv = def_cdf_inv(cdf,...)
  }
  
  V_cdf_inv = Vectorize(cdf_inv, vectorize.args = names(formals(cdf_inv))[1])
  
  return(V_cdf_inv(runif(n),...))
}

