# Outlier detection in phenotype data

library(ggplot2)

# Simulated phenotype data
phenotype <- data.frame(
  ID = 1:10,
  Trait = c(10, 12, 11, 13, 12, 14, 13, 15, 100, 11)  # 100 is an outlier
)

# Boxplot
ggplot(phenotype, aes(x = "", y = Trait)) +
  geom_boxplot() +
  geom_jitter(width = 0.1) +
  labs(title = "Outlier Detection in Trait Data")

# Z-score method
phenotype$zscore <- scale(phenotype$Trait)
outliers <- phenotype[abs(phenotype$zscore) > 2, ]
print(outliers)
