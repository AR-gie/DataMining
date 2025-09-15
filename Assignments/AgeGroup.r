categorize_age <- function(age) {
    if (age < 13) {
        return("Child")
    } else if (age >= 13 && age <= 19) {
        return("Teenager")
    } else if (age >= 20 && age <= 59) {
        return("Adult")
    } else if (age >= 60) {
        return("Senior")
    }
}

sample_input <- 65
sample_output <- categorize_age(sample_input)
print(paste(sample_output))