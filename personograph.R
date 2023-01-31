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

df$Value <- sample(x = 1:9, size = 100, replace = TRUE)

## Plot sample
ggplot(
  data = df, mapping = aes(
    x = Column, y = Row, color = Sample, label = Value
    )) + 
  geom_point(size = 12) + 
  geom_label(hjust = 0.5, vjust = 0.5) + 
  theme_grey()
