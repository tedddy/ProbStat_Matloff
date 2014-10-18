roll <- function() return(sample(1:6,1))
probtotk <- function(d,k,nreps) {
  count <- 0
  for (rep in 1:nreps) {
    sum <- 0
    for (j in 1:d) sum <- sum + roll()
    #if sum == k count <- count + 1 gxh made the syntax mistake.
    if (sum == k) count <- count + 1
  }
  return(count/nreps)
}