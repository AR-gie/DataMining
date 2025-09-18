tlight <- "Red"

result <- switch(tlight,
"Red" = "Stop",
"Yellow" = "Ready",
"Green" = "Go",
"Invalid signal")

print(result)