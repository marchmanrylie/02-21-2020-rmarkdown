# k = ((f - 32)) * (5/9) + 273.15
f_k <- function(f_temp) {
  converted <- ((f_temp - 32)) * (5/9) + 273.15
  return(converted)
}
f_k(32)
f_k(212)

install.packages(testthat)
library(testthat)
#used to check work/calculations:
expect_equal(f_k(32), 273.15)
#will return an error if not correct
expect_equal(nrow(cars), 50)

k_c <- function(k_temp) {
  return(k_temp - 273.15)
}
k_c(0)

expect_equal(k_c(0), -273.15)

f_c <- function(f_temp) {
  k_temp <- f_k(f_temp)
  temp_c <- k_c(k_temp)
  return(temp_c)
}

f_c(32) #should equal 0
f_c(212) #should equal 100
expect_equal(f_c(32), 0)

# function to calculate weighted average called mean_wt
# will have 2 vectors
# vector, x, for values
# vector, w, for weights
# sum(x * w) / sum(w)
# f(1:6, 1:6)

mean_wt <- function(x, w) {
  return(sum(x * w) / sum(w))
}

# shows the mean weight for 1 to 6
mean_wt(1:6, 1:6)
1:6

1:10 * 1:2

mean_wt(1:6, 1:3)

# remodifying to take into account that both vectors should be the same length 
mean_wt <- function(x, w) {
  if(length(x) != length(w)) {
    stop("x and w should be the same length")
  }
  return(sum(x * w) / sum(w))
}

mean_wt(1:6, 1:6)
# will give error that you identified by stop in function statement:
mean_wt(1:6, 1:3)

# :: says use what you want to use from a particular place, some things like select are found
# in more than one package so this specifies which package w/o loading it
testthat::expect_error(mean_wt(1:6, 1:3))

sum_3 <- function(x, y, z) {
  return(x + y + z)
}

sum_3(1, 2, 3)

# making z always equal 3:
sum_3 <- function(x, y, ..., z) {
  return(x + y + z)
}
sum_3(1, 2, z = 3)
