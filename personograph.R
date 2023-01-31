library(ggplot2)

## Create 10 x 10 grid
df <- expand.grid(
  Column = factor(1:10),
  Row = factor(1:10)
)

## Draw sample
df$Sample <- factor(
  sample(x = 1:2, size = 100, replace = TRUE),
  labels = c("Unselected", "Selected")
)

## Plot sample
ggplot(data = df, mapping = aes(Column, Row, color = Sample)) + 
  geom_point(size = 8)
