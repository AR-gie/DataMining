scores <- c(75, 82, 60, 95, 40)

if (all(scores >= 60)) {
    print("All students passed")
} else if (any(scores < 60)) {
    print("There's at least one student who failed")
} else {
print("There are no students")
}