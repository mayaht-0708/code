library(tidyverse) 

set.seed(123)

diamonds_sample <- diamonds |>
  slice_sample(n = 50000)

hist_p <- ggplot(diamonds_sample, aes(x = carat)) +
  geom_histogram(bins = 30) +
  labs(
    title = "Histogram of Carat (Weight) among 50,000 Diamonds",
    x = "Carat (weight)",
    y = "Number of diamonds"
  )

ggsave("histogram_carat.png", plot = hist_p)
