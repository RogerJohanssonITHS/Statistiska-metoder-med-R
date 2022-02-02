binomialPatient <- function(n, x, P) {
   result <- choose(n, x) * P^x * ((1 - P) ^(n - x))
   print(result)
}
