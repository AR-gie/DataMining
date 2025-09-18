x <- 6
y <- 5

operation <- "divide"
result <- switch(operation,
"add" = x+y,
"subtract" = x-y,
"multiply" = x*y,
"divide" = x/y,
"Invalid operation")

print (paste("Result: ",result))