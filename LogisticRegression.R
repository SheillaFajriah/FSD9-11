{r}
iris


{r}
dt <- subset(iris, select = c(Sepal.Length, Petal.Length, Petal.Width))
dt


{r}
iris$Petal.Width <- as.numeric(iris$Petal.Width)


{r}
fit <- glm(formula = Petal.Width~Petal.Length, data = iris, family = binomial)
summary(fit)


{r}
library(ggplot2)


{r}
iris$Sepal.Width <- as.numeric(iris$Sepal.Width)


{r}
iris$Petal.Length <- as.numeric(iris$Petal.Length)


{r}
ggplot(dt, aes(x=Petal.Length, y=Petal.Width)) + geom_point() +
  stat_smooth(method = "glm", ffamily="binomial", se = FALSE)


{r}
fit2 <- glm(formula = Petal.Width~Petal.Length, data = iris, family = binomial)
summary(fit2)


{r}
library(predict3d)
ggPredict(fit2)