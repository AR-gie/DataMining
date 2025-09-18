day <- c(32, 35, 29, 40, 38)

if (all(day >= 30)) {
    print("Al1 days are hot")
} else if (any(day < 30)) {
    print("Any day was below 30")
} else {
    print("All temperatures are 30 or below")
}