f_values <- c(0, 32, 212, -40)

f_values * 10

f_values * c(10, 100)

f_k <- function(f_temp) {
  converted <- ((f_temp - 32)) * (5/9) + 273.15
  return(converted)
}

f_values * 10

for (x in f_values) {
  print(x * 10)
} 

for (pizza in f_values) {
  print(pizza * 10)
} 

for (pizza in f_values) {
  print(f_k(pizza))
} 

library(purrr)
# purrr is tidyverse's way of not having to rewrite the same code over and over

# "take this function and map it across each value":
purrr::map(f_values, f_k)

converted <- purrr::map(f_values, f_k)
class(converted)

purrr::map_dbl(f_values, f_k)

mtcars
purrr::map(mtcars, class)
purrr::map(mtcars, summary)

# in base r, this ^ is done using apply, lapply, sapply, vapply

lapply(mtcars, f_c)

# getting mean for all variables in mtcars:
purrr::map_dbl(mtcars, mean)

sapply(mtcars, mean)
vapply(mtcars, mean, numeric(1))

# Exercise:
#1. Compute mean for every column in mtcars
#2. Determine the type of each column in nycflights13::flights
#3. Compute the number of unique values in each column of iris
# (Hint: you might want to write a function)
#4. Generate 10 random normals from distribution with means of -10, 0, 10, and 100

#1:
purrr::map_dbl(mtcars, mean)
#2:
library(nycflights13)
flights
purrr::map(flights, class)
#3:
iris
num_unique <- function(x) {
  return(length(unique(x)))
} 

purrr::map_dbl(iris, num_unique)
# another way to do ^ :
purrr::map_dbl(iris, function(x){length(unique(x))})
# faster way to refer to all of ^ :
purrr::map_dbl(iris, ~ length(unique(.)))

#4:
purrr::map(c(-10, 0, 10, 100), ~ rnorm(n = 10, mean = .))
# can also be written as: but above way is the easier way
purrr::map(c(-10, 0, 10, 100), function(x){rnorm(n = 10, mean = x)})

library(purrr)
# safely saves errors for later and still calculates what you're looking for instead of
# just saying error
safe_log <- safely(log)
log(10)
safe_log(10)

x <- list(1, 10, "a")
y <- x %>% map(safe_log)
# if you did this ^ w/ regular log instead of safe_log, would have gotten error
y
# transpose flips/groups results into two vectors: all results and all errors
flipped_results <- y %>% transpose()
flipped_results

# mapping over different arguments
mu <- list(5, 10, -3)
map(mu, rnorm, n = 5)

sigma <- list(1, 5, 10)

map2(mu, sigma, rnorm, n = 5)
# results give 3 levels. 1st is mu=5, sigma=1, 2nd is mu=10, sigma=5, etc.

n <- list(1, 3, 5)
# mapping more than 2 things:
# have to make a list for everything you want mapped
args <- list(mean = mu, sd = sigma, n = n)
# have to use notation "mean", "sd", and "n" b/c thats what rnorm has built into it
pmap(args, rnorm)










