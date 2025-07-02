# Filtering genotype data

library(dplyr)

# Simulated genotype data
genotype <- data.frame(
  SNP = paste0("SNP", 1:5),
  Sample1 = c(0, 1, 1, 2, NA),
  Sample2 = c(0, 1, 0, 2, 1),
  Sample3 = c(1, 1, 1, 2, 0)
)

# Calculate Minor Allele Frequency (MAF)
maf <- rowMeans(genotype[,-1], na.rm = TRUE) / 2
genotype$MAF <- maf

# Filter SNPs with MAF >= 0.05
filtered <- genotype %>% filter(MAF >= 0.05)
print(filtered)
