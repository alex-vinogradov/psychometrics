library(ggplot2)

df <- expand.grid(
  X = 1:10,
  Y = 1:10
)

df$Sample <- factor(
  sample(x = 1:2, size = 100, replace = TRUE),
  labels = c("Unselected", "Selected")
)

ggplot(data = df, mapping = aes(X, Y, color = Sample)) + 
  geom_point(size = 10) +
  theme_void()
