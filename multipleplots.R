mtcars_lm <- lm(mpg ~ wt, data = mtcars)
par(mfrow=c(2,2))
plot(mtcars_lm)
