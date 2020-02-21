f_k <- function(f_temp) {
  converted <- ((f_temp - 32)) * (5/9) + 273.15
  return(converted)
}

k_c <- function(k_temp) {
  return(k_temp - 273.15)
}
k_c(0)

f_c <- function(f_temp) {
  k_temp <- f_k(f_temp)
  temp_c <- k_c(k_temp)
  return(temp_c)
}

k_c <- function(k_temp) {
  if(k_temp < 0) {
    warning("you passed in a negative kelvin number")
    return(NA)
  }
  return(k_temp - 273.15)
}

k_c(-100)


k_c <- function(k_temp) {
  if(k_temp < 0) {
    warning("you passed in a negative kelvin number")
    return(NA)
  } else {
  return(k_temp - 273.15)
  }
}

k_c(NA)  

k_c <- function(k_temp) {
  if(is.na(k_temp)) {
    return(NA)
  } else if (k_temp < 0) {
    warning("you passed in a negative kelvin number")
    return(NA)
  } else {
    return(k_temp - 273.15)
  }
}

k_c
k_c(1:10)

if (TRUE) {
  print("hello")
}
k_c(1:10)

if (all(c(TRUE, TRUE, FALSE))) {
  print("hello")
}

c(TRUE, FALSE) == c(TRUE, FALSE)
# should use this instead:
identical(c(TRUE, FALSE), c(TRUE, FALSE))
identical(0, 0L)

# & /
# && //
c(TRUE, FALSE) & c(TRUE, FALSE)
c(TRUE, FALSE) && c(TRUE, FALSE)

