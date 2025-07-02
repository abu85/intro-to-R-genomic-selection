# Introduction to R and RStudio

# Basic arithmetic
2 + 2
sqrt(16)

# Creating variables
x <- 10
y <- 5
z <- x + y

# Vectors and data frames
vec <- c(1, 2, 3, 4)
df <- data.frame(ID = 1:4, Value = vec)

# Basic plotting
plot(df$ID, df$Value, type = "b", col = "blue", main = "Simple Plot")
