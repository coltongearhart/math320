### ---- Standard shapes ---- 

# uniform
x = seq(from = 2, to = 5, by = 0.01)
plot(x = x, y = dunif(x, min = 2, max = 5), type = "l", xlab = "x", ylab = "f(x)")

# bell-shaped
x = seq(from = -5, to = 5, by = 0.01)
plot(x = x, y = dnorm(x, mean = 0, sd = 2), type = "l", xlab = "x", ylab = "f(x)")

# skewed
x = seq(from = 0, to = 30, by = 0.01)
plot(x = x, y = dgamma(x, shape = 2, rate = 0.25), type = "l", xlab = "x", ylab = "f(x)")

# non symmetric and bounded
x = seq(from = -0.1, to = 1.1, by = 0.01)
plot(x = x, y = dbeta(x, shape1 = 5, shape2 = 3), type = "l", xlab = "x", ylab = "f(x)")

### --- Specific distributions ----

# exponential
# -> starting with two cause largest scale
x = seq(from = 0, to = 5, by = 0.01)
plot(x = x, y = dexp(x, rate = 2), type = "l", xlab = "t", ylab = "f(t)")
lines(x = x, y = dexp(x, rate = 1))
lines(x = x, y = dexp(x, rate = 0.5))
text(x = 0.9, y = 1, labels = bquote(lambda*" = 2")) # have to do labels one at a time
text(x = 1.4, y = 0.45, labels = bquote(lambda*" = 1"))
text(x = 3, y = 0.25, labels = bquote(lambda*" = 0.5"))

# gamma
# -> changing shapes
x = seq(from = 0, to = 7, by = 0.01)
plot(x = x, y = dgamma(x, shape = 1, rate = 1), type = "l", xlab = "x", ylab = "f(x)")
lines(x = x, y = dgamma(x, shape = 2, rate = 1))
lines(x = x, y = dgamma(x, shape = 4, rate = 1))
text(x = 6, y = 0.95, labels = bquote(beta*" = 1 for all")) # have to do labels one at a time
text(x = 0.9, y = 0.85, labels = bquote(alpha*" = 1"))
text(x = 2.2, y = 0.35, labels = bquote(alpha*" = 2"))
text(x = 4, y = 0.27, labels = bquote(alpha*" = 4"))

# -> changing scales
x = seq(from = 0, to = 4, by = 0.01)
plot(x = x, y = dgamma(x, shape = 2, rate = 4), type = "l", xlab = "x", ylab = "f(x)")
lines(x = x, y = dgamma(x, shape = 2, rate = 3))
lines(x = x, y = dgamma(x, shape = 2, rate = 2))
text(x = 3.5, y = 1.4, labels = bquote(alpha*" = 2 for all")) # have to do labels one at a time
text(x = 0.75, y = 1.4, labels = bquote(beta*" = 4"))
text(x = 1, y = 0.85, labels = bquote(beta*" = 3"))
text(x = 1.7, y = 0.4, labels = bquote(beta*" = 2"))

# normal
# -> normal random sample
x = rnorm(n = 1000, mean = 70, sd = 4)
hist(x, freq = TRUE, col = "white", main = "", xlab = "Heights (in)")
hist(x, freq = FALSE, col = "white", main = "", xlab = "Heights (in)")
x1 = seq(from = 55, to = 85, by = 0.01)
lines(x = x1, y = dnorm(x1, mean = 70, sd = 4))

# -> changing location
x = seq(from = 0, to = 25, by = 0.01)
plot(x = x, y = dnorm(x, mean = 10, sd = 2), type = "l", xlab = "x", ylab = "f(x)")
lines(x = x, y = dnorm(x, mean = 15, sd = 2))
text(x = 21, y = 0.19, labels = bquote(sigma^2*" = 4 for all")) # have to do labels one at a time
text(x = 4, y = 0.10, labels = bquote(mu*" = 10"))
text(x = 21, y = 0.10, labels = bquote(mu*" = 15"))

# -> changing spread
x = seq(from = 3, to = 17, by = 0.01)
plot(x = x, y = dnorm(x, mean = 10, sd = 1), type = "l", xlab = "x", ylab = "f(x)")
lines(x = x, y = dnorm(x, mean = 10, sd = 2))
text(x = 15, y = 0.38, labels = bquote(mu*" = 10 for all")) # have to do labels one at a time
text(x = 12.5, y = 0.25, labels = bquote(sigma^2*" = 1"))
text(x = 14, y = 0.10, labels = bquote(sigma^2*" = 4"))

# -> standard normal
x = seq(from = -3, to = 3, by = 0.01)
plot(x = x, y = dnorm(x, mean = 0, sd = 1), type = "l", xlab = "z", ylab = "f(z)")
text(x = 2.5, y = 0.37, labels = bquote(mu*" = 0")) # have to do labels one at a time
text(x = 2.5, y = 0.35, labels = bquote(sigma*" = 1"))

# lognormal
# -> changing location
x = seq(from = 0, to = 10, by = 0.01)
plot(x = x, y = dlnorm(x, meanlog = 0, sdlog = 1), type = "l", xlab = "y", ylab = "f(y)")
lines(x = x, y = dlnorm(x, meanlog = 1, sdlog = 1))
lines(x = x, y = dlnorm(x, meanlog = 2, sdlog = 1))
text(x = 8, y = 0.6, labels = "Different means E(Y)")

# -> changing spread
x = seq(from = 0, to = 10, by = 0.01)
plot(x = x, y = dlnorm(x, meanlog = 1, sdlog = 1.5), type = "l", xlab = "y", ylab = "f(y)")
lines(x = x, y = dlnorm(x, meanlog = 1, sdlog = 1.25))
lines(x = x, y = dlnorm(x, meanlog = 1, sdlog = 1))
text(x = 7.5, y = 0.28, labels = "Different variances V(Y)")

# beta
x = seq(from = 0, to = 1, by = 0.01)
plot(x = x, y = dbeta(x, shape1 = 1, shape2 = 1), type = "l", main = "Beta(1,1)", xlab = "x", ylab = "f(x)")
plot(x = x, y = dbeta(x, shape1 = 2, shape2 = 2), type = "l", main = "Beta(2,2)", xlab = "x", ylab = "f(x)")
plot(x = x, y = dbeta(x, shape1 = 4, shape2 = 4), type = "l", main = "Beta(4,4)", xlab = "x", ylab = "f(x)")
plot(x = x, y = dbeta(x, shape1 = 5, shape2 = 2), type = "l", main = "Beta(5,2)", xlab = "x", ylab = "f(x)")
plot(x = x, y = dbeta(x, shape1 = 2, shape2 = 5), type = "l", main = "Beta(2,5)", xlab = "x", ylab = "f(x)")
plot(x = x, y = dbeta(x, shape1 = 8, shape2 = 20), type = "l", main = "Beta(8,20)", xlab = "x", ylab = "f(x)")

### ---- Transformations ----

# easy way -> pdf method -> f_Y(y) = f_X(h(y)) * |h'(y)|

# left skewed with range -infty < Y < 0
y = seq(from = -10, to = 0, by = 0.01)
plot(x = y, y = dgamma(x = -y, shape = 3, rate = 1), type = "l", xlab = "y", ylab = "f(y)")

# right skewed with shifted range b < Y < infty, b != 0
y = seq(from = 0, to = 12, by = 0.01)
plot(x = y, y = dgamma(x = y-2, shape = 3, rate = 1), type = "l", xlab = "y", ylab = "f(y)")

# left skewed with shifted range -infty < Y < b, b != 0
# -> shift then flip (so positive b shifts to left)
y = seq(from = -12, to = 0, by = 0.01)
plot(x = y, y = dgamma(x = -(y+2), shape = 3, rate = 1), type = "l", xlab = "y", ylab = "f(y)")

# bounded range between a <= Y <= b
a = 1
b = 5
y = seq(from = a-1, to = b+1, by = 0.01)
plot(x = y, y = dbeta(x = (y - a) / (b - a), shape1 = 2, shape2 = 2) / (b - a), type = "l", xlab = "y", ylab = "f(y)")
