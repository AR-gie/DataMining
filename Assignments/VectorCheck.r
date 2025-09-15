VC <- function(num) {
    if (all(num > 50)) {
        return("All are above 50")
    } else if (any(num > 50)) {
        return("Some are above 50")
    } else {
        return("None are above 50")
    }
}

sample_input <- c(20, 55, 70)
sample_output <- VC(sample_input)
print(paste(sample_output))