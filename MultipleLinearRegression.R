{r}
head(iris)


{r}
iris$Petal.Width = ifelse(iris$Petal.Length>=1.5, "0.4", "0.2")
fit <- lm(Sepal.Length~Sepal.Width+Petal.Width, data = iris)
summary(fit)


{r}
library(predict3d)


{r}
ggPredict(fit)


{r}
ggPredict(fit, show.error = TRUE, facet.modx = TRUE, show.text = FALSE)