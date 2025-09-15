class_grade <- function(score) {
    if (score >= 90) {
        return("A")
    } else if (score >= 80) {
        return("B")
    } else if (score >= 70) {
        return("C")
    } else if (score >= 60) {
        return("D")
    } else {
        return("F")
    }
}

sample_input <- 72
sample_output <- class_grade(sample_input)
print(paste("Grade:", sample_output))