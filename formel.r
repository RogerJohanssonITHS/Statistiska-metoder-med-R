binomialPatient <- function(n, x, P) {
   result <- choose(n, x) * P^x * ((1 - P) ^(n - x))
   print(result)
}

empiricalSamplingDistr <- function(dataset, samples, samplesize) {
	sampleMeanCollection <- c()
	for (i in 1:samples){
		sampleMeanCollection <- c(sampleMeanCollection, mean(sample(dataset, samplesize, replace = T))) # Appending new value to vector
		}
	return (sampleMeanCollection)
}