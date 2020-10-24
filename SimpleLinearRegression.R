{r}
head(iris)



{r}
new_dt <- subset(iris, select = c(Sepal.Length, Sepal.Width))
new_dt


{r}
fit <- lm(Sepal.Length~Sepal.Width, data = iris)
summary(fit)


{r}
library(predict3d)


{r}
ggPredict(fit)


{r}
ggPredict(fit, xpos = 0.75, vjust = 1.5, show.error = TRUE)