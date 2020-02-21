# write a function
# takes a single value
# divisible 3: "fizz"
# divisible 5: "buzz"
# divisible 3 AND 5: "fizzbuzz"
# otherwise NA # return value back as character
# know if something is divisible by using %%
# if it returns a zero, it is divisible
# ex: fizzbuzz(6) should return as fizz and fizzbuzz(15) should return as fizzbuzz

fizzbuzz <- function(x) {
  if((x %% 3) == 0 & (x %% 5) == 0) {
    return("fizzbuzz")
  } else if((x %% 3) == 0) {
    return("fizz")
  } else if(x %% 5) == 0) {
    return("buzz")
  } else {
    return(as.character(x))
  }

fizzbuzz_vec <- function(x) {
dplyr::case_when(
  (x %% 3) == 0 & (x %% 5) == 0 ~ "fizzbuzz",
  (x %% 3) == 0 ~ "fizz",
  (x %% 5) == 0 ~ "buzz",
  TRUE ~ as.character(x)
)
}

fizzbuzz_vec(6)
fizzbuzz_vec(15)
fizzbuzz_vec(5:12)

# another way to use if else functions
describe_temp <- function(temp) {
  if (temp <= 0) {
    "freezing" 
  } else if (temp <= 10) {
      "cold"
  } else if (temp <= 20) {
      "cool"
  } else if (temp <= 30) {
      "warm"
  } else {
      "hot"
    } 
} 
values <- 10
describe_temp(10)
describe_temp(20)
