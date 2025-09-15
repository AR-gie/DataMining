cat_temp <- function(temp) {
    if (temp >= 30) {
        return("Hot")
    } else if (temp >= 20 && temp < 30) {
        return("Warm")
    } else {
        return("Cold")
    }
}

sample_input <- 25
sample_output <- cat_temp(sample_input)
print(paste(sample_output))