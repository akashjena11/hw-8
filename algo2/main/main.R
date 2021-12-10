source("~/Documents/Rstuff/hw-8/algo2/headers/headers.R")

rejection_sampling= function(n, targ_pdf, prop_pdf, prop_ran, env_const){
  
  if(!is.numeric(n)){
    stop("n is not numeric")
  }
  
  if(n<=0){
    stop("n is not positive")
  }
  
  if(!is.integer(n)){
    writeLines("n is not an integer, n coerced to n=ceiling(n)")
    n=ceiling(n)
  }
  
  if(missing(env_const)){
    readLines("env_const missing, numerical methods utilised to define env_const\n")
    env_const = def_env_const(targ_pdf, prop_pdf)
  }
  
  X=rep(NA, n)
  i=1
  while (TRUE) {
    prop_value=prop_ran(1)
    u=runif(1)
    if(u*env_const*prop_pdf(prop_value)<targ_pdf(prop_value)){
      X[i]=prop_value
      i=i+1
    }
    if(i>n) break
  }
  return(X)
}


