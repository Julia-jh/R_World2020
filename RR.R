# 유전자의 발현량과 환자의 생존기간과의 상관관계

expr <- read.table("Expr.txt",
                   header = TRUE)

patient <- read.table("Patient.txt",
                      header = TRUE,
                      fill = TRUE)


num <- rownames(expr)
gene <- names(expr)

y <- as.numeric(patient$Survival)

correlation <- c()

for(i in 1:length(num)) {
  x <- as.numeric(expr[i,-1])
  correlation[i] <- cor(x, y,
                       method = c("pearson"))
}

# test
x2 <- as.numeric(expr[1,-1])
cor(x2, y,
    method = c("pearson"))



badGene <- which.min(correlation)
df <- data.frame(expr$Gene[badGene], )