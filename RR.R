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


geneName <- as.character(expr$Gene)
names(correlation) <- geneName
correlation

# test
x2 <- as.numeric(expr[1,-1])
cor(x2, y,
    method = c("pearson"))



# 상관관계 가장 낮은 유전자 찾기
# geneName[which.min(correlation)]


PARP1 <- as.numeric(expr[which.min(correlation),-1])
Survival <- as.numeric(patient$Survival)
target <- data.frame(PARP1, Survival)
target


# 그래프 그리기
# library(ggplot2)
ggplot(target, aes(x = PARP1, y = Survival)) + geom_point() + geom_smooth()
