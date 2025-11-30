install.packages("arules")
install.packages("arulesViz")

library(arules)
library(arulesViz)

data("Groceries")
summary(Groceries)

rules <- apriori(Groceries,
parameter = list(supp = 0.005, conf = 0.3))

inspect(head(rules, 10))

frequent_items <- eclat(Groceries,
parameter = list(support = 0.01))
inspect(head(frequent_items))

plot(rules, method = "scatterplot")
plot(rules, method = "graph", engine = "htmlwidget")
plot(rules, method = "grouped")
rules_lift <- sort(rules, by = "lift", decreasing = TRUE)
plot(rules_lift[1:20], method = "graph", engine = "htmlwidget")