nums <- c(2, 4, 5, 8)

if (all(nums %% 2 == 0)) {
    print("All are even")
} else if (any (nums %% 2 == 0)) {
    print("Some are even")
} else {
    print ("None are even")
}