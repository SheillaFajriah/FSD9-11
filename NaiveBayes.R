```{r}
head(iris)
```

```{r}
Naive_Bayes_Model = naive_bayes(Species~., data = iris)
Naive_Bayes_Model
```

```{r}
newData <- data.frame(Sepal.Length = "5.0", Sepal.Width = "5.0", Petal.Length = "5.0", Petal.Width = "5.0", Species = "")
newData
```

```{r}
vector_prediction = predict(Naive_Bayes_Model, data = newData, type = "class")
vp = vector_prediction
vp
```

```{r}
Species2 = colnames(vp)[max.col(vp, ties.method = "first")]
sprintf("Species for the new data is '%s'", Species2)
newData$Species <- Species2
newData
```