<<<<<<< HEAD
# R
# 
# 3. R 구조 및 특징
# - 패키지 설치
# install.packages("패키지명")
#
# - 패키지 부르기
# library(패키지명)
#
# - 설치된 패키지 목록 보기
# installed.packages()
#
# - 패키지 업데이트
# update.packages("패키지명")
#
# - 패키지 일괄 업데이트
# update.packages()
#
# - 패키지 삭제
# remove.packages("패키지명")
#
# 
# - R 기본사항
# - 대소문자 구분
# - 종료 명령어: q()
# - 작업디렉토리 설정
# - setwd("작업디렉토리")
# - 실행 명령어: crtl + R
# - 주석처리: # 주석내용~
#
#
#
#******************************************************
#
# 4. 변수에 대해
# - 덧셈: +
# - 뺄셈: -
# - 곱셈: *
# - 나눗셈: / (정수 전용 몫 계산)
# - 나눗셈: %% (정수전용 몫 계산후 나머지 값)
# - 승수 계산: ^ 혹은 **

# - 변수: 값을 저장하기 위한 메모리 공간을 확보하여 식별자를 붙인 것
# - 식별자
# : 사용자가 정의하는 모든 이름, 시작은 무조건 문자로 시작해야 한다
# : 대소문자를 구분하고, 예약어는 사용이 불가하다
# >> 변수명(식별자) <- 값
# - 문자값을 변수에 대입할 때는, 값 양쪽에 " "를 붙인다
# - 벡터
b <- c ('a', 'b', 'c', 'd')
# - b안에 a가 있는가?
"a"%in%b
#
#
#
# ******************************************************
#
# 5, 6. 자료타입-1, 2
Sys.Date() # 지금 날짜
d <- Sys.Date()
as.Date(d)# 괄호 안 데이터를 날짜데이터로 바꿈
# - is.na(~~): ~~에 결측값 있는가?
# - NA: Not Available
# - NULL: 아무것도 아닌 값
# - factor
# : 변수가 취할 수 있는 값이 범주로 주어지는 경우
# - 명목형: 의결(찬성, 반대), 종교(천주교, 기독교, 불교)
# - 순서형: 크기(대, 중, 소)

pet <- factor(c("dog", "dog", "cat", "aligator"))
pet

table(pet)
unclass(pet)

pet <- factor(c("dog", "dog", "cat", "aligator"), c("dog", "cat"))
pet

number <- factor(c("18won", "24won", "24won", "33won", "33won", "33won", "18won"), ordered = TRUE)
number
#
#
#
# ******************************************************
#
# 7, 8. 벡터-1, 2
# - vector
# : 같은 유형의 데이터를 여러 개 변수로 보관할 경우 사용
# : 여러 변수들을 하나의 이름으로 묶은 집합
# : 벡터의 항목을 변경할 수 있으며, 추가작업이 가능
# : 벡터 각 항목에 이름을 부여하여 인덱스 뿐 아니라, 이름으로도 접근이 가능
# : 벡터는 한 가지 타입이어야 한다

x <- -1:5
is.vector(x) # x가 벡터인가?
x+2 # x 요소에 각 2를 더한다
c <- as.character(x); c # x를 문자로 바꾼다
n <- as.numeric(c); n # c를 숫자로 바꾼다
f <- factor(n); f # n을 팩터로 바꾼다다

coffee <- c(3000, 3000, 4500, 4500); coffee
names(coffee) <- c("Americano", "espresso", "cafelatte", "cafemocha")
coffee
acoffee <- c("Americano", "espresso"); acoffee
bcoffee <- c("cafelatte", "cafemocha"); bcoffee
coffee_menu <- c(acoffee, bcoffee); coffee_menu
coffee[2] # 벡터의 인덱스값으로 접근
coffee["cafemocha"] # 벡터의 값으로 접근근
coffee[1] <- 3500; coffee[1] # 벡터 값 수정
coffee[2:4] # 벡터의 2번째 항목부터 4번째 항목을 본다
coffee[-3] # 벡터의 3번째 항목만 빼고 본다

#  벡터는 동적인 언어이다
coffee[2]+500 # 벡터의 2번째 항목에 500 더하기
coffee + 1000 # 벡터 전체 항목에 1000원 더하기

# 벡터를 집합으로 간주하여, 교집합, 합집합, 일치 여부 등을 연산
x <- c(15, 10, 7, 3); x
y <- c(20, 17, 2, 8); y
x+y

x <- c("americano", "capuchino", "cafemocha"); x
y <- c("americano", "cafemocha", "mochachino"); y
uxy <- union(x,y); uxy # 합집합 계산
ixy <- intersect(x,y); ixy # 교집합 계산
sxy <- setdiff(x,y); sxy # x의 차집합 계산
iden_xy <- identical(x,y); iden_xy # 두 항목이 일치하면 TRUE
set_xy <- setequal(x,y); set_xy # 두 집합의 구성값 동일하면 TRUE

z <- c("americano", "cafemocha", "capuchino", "cafemocha"); z
iden_xz <- identical(x,z); iden_xz # 두 항목이 일치하면 TRUE
set_xz <- setequal(x,z); set_xz # 두 집합의 구성값 동일하면 TRUE

y <- seq(0, 1000, 200); y
y1 <- seq(1, 5); y1 # 기본은 1씩 차이남

y2 <- rep(1:2, times = 2); y2 # 전체 항목을 반복
y3 <- rep(1:2, each = 3); y3 # 각 항목을 반복

length(y3)
NROW(uxy)

m <- seq(0, 1000, length = 20); m
a <- vector(mode = "character", length = 20); a
a[1] <- 10; a
#
#
#
# ******************************************************
#
# 9. list & matrix
my1 <- list("Julia", "junior", "Kr", 28); my1
my2 <- list(friend = "joy", myalpha = "K", mynum = 28); my2
my2$myalpha
my2$mynum - 2
my2[1]
my2$song <- "Hello"; my2

age <- matrix(c(25, 33, 32, 37, 28, 38), nrow = 2); age
age <- matrix(c(25, 33, 32, 37, 28, 38), ncol = 2); age

dimnames(age) <- list(c("국어", "영어", "수학"), c("1반", "2반")); age

age <- cbind(age, c(35, 22, 25, 28)); age

a1 <- c(22, 28, 29)
a2 <- c(15, 25, 34)
age2<- rbind(age, a1, a2); age2



# ******************************************************
#
# 10, 11. 데이터프레임-1, 2
df <- data.frame(name = c("가나다", "라마바", "사아자"), age = c(25, 33, 47)); df
name = c("가나다", "라마바", "사아자"); name
age = c(25, 33, 47); age
df2 <- data.frame(n = name, a = age); df2
df2[2]
df2$n
df2$a + 2

carinfo <- matrix(c('11km', '13km', '15km', 'h사', 'p사', 'r사'), ncol=2); carinfo
dfr <- as.data.frame(carinfo); dfr
names(dfr) <- c('연비', '제조사'); dfr
directory <- "C://Users/USER/Documents/MEGAsync/Coursera/2 취준/2021/빅공데_사전교육/R Program 입문 데이터 통계분석/자료/"
pinfo <- read.table(paste0(directory, "personal.txt"), header = TRUE); pinfo
pjobinfo <- read.table(paste0(directory, 'pjob.txt'), header = TRUE); pjobinfo
lifeinfo <- data.frame(취미 = c("목공예", "패러글라이딩", "등산", "꽃꽃이", "독서"),
                         관심사 = c("취업", "아파트 분양", "대출", "이직", "교통인프라")); lifeinfo
myinfo <- cbind(pinfo, lifeinfo); myinfo

otherinfo <- data.frame(이름 = c("황성주", "윤준영"),
                          거주지역 = c("강원", "충북"),
                          나이 = c(42, 55),
                          성별 = c("여", "여")); otherinfo

totinfo <- rbind(pinfo, otherinfo); totinfo
coreinfo <- merge(pinfo, pjobinfo); coreinfo

data1 <- subset(pinfo, select = -거주지역); data1
data2 <- subset(pinfo, select = c(이름,나이)); data2
data3 <- cbind(pinfo,
               결혼 = c(FALSE, TRUE, TRUE, FALSE, TRUE)); data3
data3[-3,]
data3[,-5]
ncol(data3)
nrow(data3)
colnames(data3)<- c("성명", "거주지", "나이", "성별")
names(data3)



# ******************************************************
#
# 12, 13. 조건제어문-1, 2
# if문
a <- 8
if(a%%2 == 0){
  result <- "짝수"
  result
}

a <- 123

if(a%%2 == 0){
  result <- "짝수"
} else{
  result <- "홀수"
}
result

a <- 77

if(a %% 3 == 0 && a %% 7 == 0){
  result <- "3의 배수이면서 7의 배수"
} else if(a %% 3 == 0){
  result <- "3의 배수"
} else if(a %% 7 == 0){
  result <- "7의 배수"
} else{
  result <- "3의 배수도, 7의 배수도 아니다"
}
result

# ifelse(조건, 참일 때, 거짓일 때)
# : 다수의 데이터에 대한 조건을 한꺼번에 처리할 때 사용한다

a <- c(10, 13, 17, 8, 20)

if(a %% 2 == 0){
  result <- "짝수"
} else{
  result <- "홀수"
}
result

ifelse(a %% 2 == 0, "짝수", "홀수")
result <- c(ifelse(a %% 2 == 0, "짝수", "홀수")); result
df <- data.frame(a, result); df


a <- c(10, 13, 17, 8, 20)
result <- c(ifelse(a > mean(a), "평균초과",
                   ifelse(a < mean(a), "평균 미만", "평균값"))); result

df2 <- data.frame(a, result); df2

# for문
y <- 0
for(x in 1:5){
  y <- y + x
}
y

y <- 0
for(x in 1:5){
  y <- y + x
  cat("1부터 ", x,"까지 합 = ", y, "\n")
}

a <- c(4, 25, 8, 33, 17, 20)
evensum <-0

for(x in 1:length(a)){
  if(a[x] %% 2 == 0) evensum <- evensum + a[x]
}

evensum


# 구구단
gugudan <- matrix(0, nrow = 9, ncol = 9); gugudan
for(i in 1:9){
  for(j in 1:9){
    gugudan[i,j] <- i*j
  }
}

gugudan



# while문

i <- 1
isum <- 0
while(i <= 10){
  isum <- isum + i
  i <- i+1
}

isum

i <- 1
isum <- 0
while(TRUE){
  isum <- isum + i
  cat("1부터 ", i, "까지 합 = ", isum, "\n")
  if(isum > 500) break
  i <- i + 1
}



# repeat문

a <- c(42, 25, 16, 7, 23, 12, 9)
i <- 1
repeat{
  if(a[i] < mean(a)) break
  i <- i + 1
}
a[i]
mean(a)



# ******************************************************
#
# 14, 15. 함수-1, 2
# mean(): 평균
# sum(): 합계
# sd(): 표준편차
# var(): 분산
# sort(): 정렬
# min(), max(): 최소, 최대
# median(): 중위수
# cor(): 상관계수
# range(): 범위
# rev(): 요소 나열순서 반대

a <- c(23, 13, 5, 17, 85); a
mean(a)
sd(a)
sort(a)
rev(a)

a1 <- c(2.34, 3.1, 4.3, 2.98); a1 
b1 <- c(2.4, 3.09, 4.3, 3.1); b1
cor(a1 ,b1)

# apply
height <- c(177, 180, 167, 165, 170, NA); height
weight <- c(NA, 77.3, 80, 60, NA, 64); weight
df <- data.frame(신장 = height, 체중 = weight)
names(df) <- c("신장", "체중")
df

apply(df, 2, mean, na.rm = TRUE)

# lapply(): 계산 결과를 list로 출력
# sapply(): 계산 결과를 벡터로 출력
# tapply(): 계산 결과를 특정부분으로 그룹화하여 출력

lapply(df, max, na.rm = TRUE)
sapply(df, max, na.rm = TRUE)

directory <- "C://Users/USER/Documents/MEGAsync/Coursera/2 취준/2021/빅공데_사전교육/R Program 입문 데이터 통계분석/자료/"
dflist <- read.table(paste0(directory, 'passlist.txt'), header = TRUE); dflist

tapply(dflist$평점, dflist$성별, mean)
tapply(dflist$나이, dflist$성별, mean, simplify = FALSE)

# 사용자 정의 함수
guideinfo <- function(){
  writeLines("분석에 최적화된 프로그램 R")
  # 매체에 저장하는 함수
}

guideinfo()

guideinfo <- function(msg){
  writeLines(msg)
}

guideinfo("나도 배운다")
guideinfo("R을 배워요")

basicst <- function(x){
  amin <- min(x)
  amax <- max(x)
  amean <- mean(a)
  avar <- var(a)
  asd <- sd(a)
  totinfo <- list(최소값 = amin, 최대값 = amax,
                     평균 = amean, 분산 = avar, 표준편차 = asd)
  return(totinfo)
}
a <- c(68, 75, 80, 85, 45, 70, 95, 55); a
basicst(a)

source(paste0(directory, 'calc.txt'))
a <- c(35, 77, 155, 50, 67); a
calc(c)



# ******************************************************
#
# 16, 17. 파일불러오기-1, 2
a <- scan(paste0(directory, 'irum.txt'), what = 'char', sep = ','); a
b <- scan(paste0(directory, 'irum.txt'), what = 'char'); b
x <- scan(); x

data <- readLines(paste0(directory, 'consumer.txt')); data

data <- read.csv(paste0(directory, 'seoulpopulation.csv'), header = TRUE); data

# install.packages("XLConnect")
# require(XLConnect) # library와 유사하나, 인스톨 안했으면 경고만 해줌
# readWorksheet("",
#               sheet = "",
#               startRow = ,
#               startCol = ,
#               endRow = ,
#               endCol = )

wb <- loadWorkbook("subway.xlsx"); wb
df <- readWorkbook(wb, sheet = 1, header = TRUE); df
names(df) <- c("구분", "역이름", "1월이용자", "2월이용자", "3월이용자", "합", "1일평균")
df


# install.packages("xlsx")
require(xlsx)
df2 <- read.xlsx2("subway.xlsx", 1); df2

# 엑셀파일에서 일부분 복사해서 사용하기
a <- readClipboard(); a
df <- read.table(file = "clipboard", sep = "\t", header = TRUE); df



# ******************************************************
# 
# 18, 19, 20. plot() 함수-1, 2, 3
plot.new()
age <- c(24, 36, 40, 42, 27, 35, 55, 48)
plot(age, main = "나이분포", ylab = "나이", col = 'green')

plot.new()
height <- c(165, 177, 167, 173, 178, 180, 172, 175, 168)
weight <- c(60, 70, 66, 50, 80, 77, 95, 50, 55)
plot(weight, height, main = "키와 몸무게 분포",
     xlab = "체중", ylab = "키", col = rainbow(length(height)))

plot.new()
height <- c(165, 177, 167, 173, 178, 180, 172, 175, 168)
weight <- c(60, 70, 66, 50, 80, 77, 95, 50, 55)
plot(weight, height, main = "키와 몸무게 분포",
     xlab = "체중", ylab = "키", col = rainbow(length(height)),
     type = 'o')
# l: line
# b: 동그라미와 선 같이
# o: 동그라미를 지나는 선과 같이

plot.new
x <- 1:5
y <- x
par(mfrow = c(2, 3))
par(pch=9, cex=1)
kind <- c('p', 'b', 'l', 'o', 's', 'h')
for(i in 1:length(kind)){
  title <- paste("type: ", kind[i])
  plot(x, y, type = kind[i], main = title,
       col = rainbow(i))
}


plot.new
x <- 1:5
y <- x
plot(x, y, main = "sample")
abline(h=c(1:5), v = c(1:5), col = "red", lty = "dotted")
text(3,3, "기본점")


plot.new()
height <- c(165, 177, 167, 173, 178, 180, 172, 175, 168)
weight <- c(60, 70, 66, 50, 80, 77, 95, 50, 55)
irum <- c('김', '박', '최', '신', '정', '한', '황', '이')
plot(weight, height, main = "키와 몸무게 분포",
     xlab = "체중", ylab = "키", col = rainbow(length(height)))
abline(h = seq(165, 180, 5), col = 'grey', lty = 2)
text(mean(weight), mean.default(height), "표준", col = "purple")
axis(2, at = "hegith", labels = height, col.axis = "grey")
legend("bottomright", col = rainbow(length(height)),
       legend = irum, lty = 1)



# ******************************************************
#
# 21, 22, 23. plot 종류-1, 2, 3
plot.new()
y1 <- c(0.8, 0.5, 0.4, 0.4, 0.5, 0.7)
y2 <- c(0.8, 1.3, 1.0, 1.3, 0.9, 1.2)
x <- c(1:6)
par(new = TRUE)
plot(x, y1, ylab = "소비자 물가 상승률", type = "o", col = "red",
     ylim = c(0.3, 1.5))
par(new = TRUE)
plot(x, y2, lty = "dotted", ylim = c(0.3, 1.5), 
     ylab = "소비자 물가 상승률", type = "l", col = "blue")
legend(locator(1), legend = c('2015년', '2016년'), lty = 1, bg = "yellow",
       col = c('red', 'blue'))

plot.new()
x <- c(100, 200, 300, 350, 500)
barplot(x, name = c('a', 'b', 'c', 'd', 'e'),
        las = 1, col = "yellow", ylim = c(100, 600))


plot.new()
data <- read.csv(paste0(directory, "seoulpopulation.csv"), sep = ",", header = TRUE); data
data1 <- subset(data, 여자 >= 230000); data1
gu <- data1$자치구
barplot(data1$여자, names = gu, las = 1, col = 'darkgreen',
        horiz = TRUE, main = "서울 여성 23만명 이상 거주 자치구")

plot.new()
data <- read.csv(paste0(directory, "seoulpopulation.csv"), sep = ",", header = TRUE); data
tot <- rowSums(data[, c('여자', '남자')], na.rm = TRUE)
data <- cbind(data, tot); data
data1 <- subset(data, tot >= 500000); data1
barplot(as.matrix(data1[1:6, 2:3]), beside = TRUE,
        legend = c('남', '여'), col = c('darkgreen', 'darkblue'),
        main = "서울 50만명 이상 거주 자치구", ylim = c(0, 400000))


plot.new()
x <- c(23, 33, 32, 45, 37, 28, 15, 35, 43, 27, 46, 33, 38, 46, 50, 25); x
hist(x, main = "연령분포", xlim = c(15, 50),
     col = 'darkred')

plot.new()
data <- read.csv(paste0(directory, "birthdie.csv"),
                 sep = ",", header = TRUE); data
boxplot(data$출생, data$사망, names = c('출생', '사망'),
        col = c('darkred', 'darkblue'),
        main = "서울 2013-2014 출생사망자 비교")

par.new()
x <- c(27, 43, 15)
pie(x, radius = 1, labels = c('한식', '일식', '중식'),
    col = c('darkgreen', 'darkred', 'darkblue'))



# ******************************************************
#
# 24. ggplot2 개요 및 기본함수 사용방법 학습
# 25. ggplot2 레이어 개념 실습
# 26. Geom._point, geom._bar, geom._line 함수 이용한 다양한 그래프 작업 실습
# had.co.nz/ggplot2
# ggplot2 자세한 설명이 있다
# install.packages("ggplot2")
library(ggplot2)

a <- c(65, 70, 75, 80); a
b <- c(33, 55, 60, 80); b
qplot(a, b, color = "yellow")
# color을 colour이라고 해도 됨

data1 <- data.frame(mat = c(55, 75, 80, 65, 90, 100, 70, 85), 
                    eng = c(65, 100, 45, 50, 75, 90, 90, 65),
                    avg = c(53, 70, 83, 70, 93, 95, 75, 80),
                    irum = c("김", "이", "박", "최", "황", "문", "윤", "정"))
data1
ggplot(data1, aes(avg, mat)) +
  geom_line(color = "darkred") +
  geom_point(color = "yellow")

qplot(avg, mat, data = data1, geom = c("line", "point"),
      color = "purple")


directory <- "C://Users/USER/Documents/MEGAsync/Coursera/2 취준/2021/빅공데_사전교육/R Program 입문 데이터 통계분석/자료/"
datainfo <- read.csv(paste0(directory, "highwaybus09.csv"),
                     sep = ",", header = TRUE); datainfo
ggplot(datainfo, aes(총운행횟수, 이용율)) + 
  geom_point(aes(colour = 선별, shape = 선별, size = 거리))


ggplot(data1, aes(mat, avg)) +
  geom_line(color = "darkred") +
  geom_point(color = "purple") +
  geom_line(aes(eng, avg), colour = "darkgreen")+
  geom_point(aes(eng, avg), colour = "pink")


ggplot(datainfo, aes(선별)) + 
  geom_bar(fill = "orange", colour = "red")

meandf <- as.data.frame(with(datainfo,
                             tapply(이용율, 선별, mean, na.rm = TRUE)))
meandf$노선 <- rownames(meandf)
names(meandf) <- c("이용율", "노선")
meandf
ggplot(meandf, aes(노선, 이용율)) +
  geom_bar(stat = "identity", aes(fill = 노선))


meandf <- as.data.frame(with(datainfo,
                             aggregate(이용율,
                                          list(선별 = 선별, 차종 = 차종),
                                          mean, na.rm = TRUE)))
meandf
rownames(meandf)
meandf$평균이용율 <- rownames(meandf)
meandf
names(meandf) <- c("선별", "차종", "평균이용율"); meandf
ggplot(meandf, aes(선별, 평균이용율)) +
  geom_bar(stat = "identity", aes(fill = 차종))

ggplot(meandf, aes(선별, 평균이용율)) +
  geom_bar(stat = "identity", aes(fill = 차종), position = "fill")

ggplot(meandf, aes(선별, 평균이용율)) +
  geom_bar(stat = "identity", aes(fill = 차종), position = "dodge")

ggplot(meandf, aes(선별, 평균이용율)) +
  geom_bar(stat = "identity", aes(fill = 차종), position = "dodge") +
  geom_text(aes(y=평균이용율, label = 평균이용율),
            color = "darkgrey", size = 3)


=======
# R
# 
# 3. R 구조 및 특징
# - 패키지 설치
# install.packages("패키지명")
#
# - 패키지 부르기
# library(패키지명)
#
# - 설치된 패키지 목록 보기
# installed.packages()
#
# - 패키지 업데이트
# update.packages("패키지명")
#
# - 패키지 일괄 업데이트
# update.packages()
#
# - 패키지 삭제
# remove.packages("패키지명")
#
# 
# - R 기본사항
# - 대소문자 구분
# - 종료 명령어: q()
# - 작업디렉토리 설정
# - setwd("작업디렉토리")
# - 실행 명령어: crtl + R
# - 주석처리: # 주석내용~
#
#
#
#******************************************************
#
# 4. 변수에 대해
# - 덧셈: +
# - 뺄셈: -
# - 곱셈: *
# - 나눗셈: / (정수 전용 몫 계산)
# - 나눗셈: %% (정수전용 몫 계산후 나머지 값)
# - 승수 계산: ^ 혹은 **

# - 변수: 값을 저장하기 위한 메모리 공간을 확보하여 식별자를 붙인 것
# - 식별자
# : 사용자가 정의하는 모든 이름, 시작은 무조건 문자로 시작해야 한다
# : 대소문자를 구분하고, 예약어는 사용이 불가하다
# >> 변수명(식별자) <- 값
# - 문자값을 변수에 대입할 때는, 값 양쪽에 " "를 붙인다
# - 벡터
b <- c ('a', 'b', 'c', 'd')
# - b안에 a가 있는가?
"a"%in%b
#
#
#
# ******************************************************
#
# 5, 6. 자료타입-1, 2
Sys.Date() # 지금 날짜
d <- Sys.Date()
as.Date(d)# 괄호 안 데이터를 날짜데이터로 바꿈
# - is.na(~~): ~~에 결측값 있는가?
# - NA: Not Available
# - NULL: 아무것도 아닌 값
# - factor
# : 변수가 취할 수 있는 값이 범주로 주어지는 경우
# - 명목형: 의결(찬성, 반대), 종교(천주교, 기독교, 불교)
# - 순서형: 크기(대, 중, 소)

pet <- factor(c("dog", "dog", "cat", "aligator"))
pet

table(pet)
unclass(pet)

pet <- factor(c("dog", "dog", "cat", "aligator"), c("dog", "cat"))
pet

number <- factor(c("18won", "24won", "24won", "33won", "33won", "33won", "18won"), ordered = TRUE)
number
#
#
#
# ******************************************************
#
# 7, 8. 벡터-1, 2
# - vector
# : 같은 유형의 데이터를 여러 개 변수로 보관할 경우 사용
# : 여러 변수들을 하나의 이름으로 묶은 집합
# : 벡터의 항목을 변경할 수 있으며, 추가작업이 가능
# : 벡터 각 항목에 이름을 부여하여 인덱스 뿐 아니라, 이름으로도 접근이 가능
# : 벡터는 한 가지 타입이어야 한다

x <- -1:5
is.vector(x) # x가 벡터인가?
x+2 # x 요소에 각 2를 더한다
c <- as.character(x); c # x를 문자로 바꾼다
n <- as.numeric(c); n # c를 숫자로 바꾼다
f <- factor(n); f # n을 팩터로 바꾼다다

coffee <- c(3000, 3000, 4500, 4500); coffee
names(coffee) <- c("Americano", "espresso", "cafelatte", "cafemocha")
coffee
acoffee <- c("Americano", "espresso"); acoffee
bcoffee <- c("cafelatte", "cafemocha"); bcoffee
coffee_menu <- c(acoffee, bcoffee); coffee_menu
coffee[2] # 벡터의 인덱스값으로 접근
coffee["cafemocha"] # 벡터의 값으로 접근근
coffee[1] <- 3500; coffee[1] # 벡터 값 수정
coffee[2:4] # 벡터의 2번째 항목부터 4번째 항목을 본다
coffee[-3] # 벡터의 3번째 항목만 빼고 본다

#  벡터는 동적인 언어이다
coffee[2]+500 # 벡터의 2번째 항목에 500 더하기
coffee + 1000 # 벡터 전체 항목에 1000원 더하기

# 벡터를 집합으로 간주하여, 교집합, 합집합, 일치 여부 등을 연산
x <- c(15, 10, 7, 3); x
y <- c(20, 17, 2, 8); y
x+y

x <- c("americano", "capuchino", "cafemocha"); x
y <- c("americano", "cafemocha", "mochachino"); y
uxy <- union(x,y); uxy # 합집합 계산
ixy <- intersect(x,y); ixy # 교집합 계산
sxy <- setdiff(x,y); sxy # x의 차집합 계산
iden_xy <- identical(x,y); iden_xy # 두 항목이 일치하면 TRUE
set_xy <- setequal(x,y); set_xy # 두 집합의 구성값 동일하면 TRUE

z <- c("americano", "cafemocha", "capuchino", "cafemocha"); z
iden_xz <- identical(x,z); iden_xz # 두 항목이 일치하면 TRUE
set_xz <- setequal(x,z); set_xz # 두 집합의 구성값 동일하면 TRUE

y <- seq(0, 1000, 200); y
y1 <- seq(1, 5); y1 # 기본은 1씩 차이남

y2 <- rep(1:2, times = 2); y2 # 전체 항목을 반복
y3 <- rep(1:2, each = 3); y3 # 각 항목을 반복

length(y3)
NROW(uxy)

m <- seq(0, 1000, length = 20); m
a <- vector(mode = "character", length = 20); a
a[1] <- 10; a
#
#
#
# ******************************************************
#
# 9. list & matrix
my1 <- list("Julia", "junior", "Kr", 28); my1
my2 <- list(friend = "joy", myalpha = "K", mynum = 28); my2
my2$myalpha
my2$mynum - 2
my2[1]
my2$song <- "Hello"; my2

age <- matrix(c(25, 33, 32, 37, 28, 38), nrow = 2); age
age <- matrix(c(25, 33, 32, 37, 28, 38), ncol = 2); age

dimnames(age) <- list(c("국어", "영어", "수학"), c("1반", "2반")); age

age <- cbind(age, c(35, 22, 25, 28)); age

a1 <- c(22, 28, 29)
a2 <- c(15, 25, 34)
age2<- rbind(age, a1, a2); age2



# ******************************************************
#
# 10, 11. 데이터프레임-1, 2
df <- data.frame(name = c("가나다", "라마바", "사아자"), age = c(25, 33, 47)); df
name = c("가나다", "라마바", "사아자"); name
age = c(25, 33, 47); age
df2 <- data.frame(n = name, a = age); df2
df2[2]
df2$n
df2$a + 2

carinfo <- matrix(c('11km', '13km', '15km', 'h사', 'p사', 'r사'), ncol=2); carinfo
dfr <- as.data.frame(carinfo); dfr
names(dfr) <- c('연비', '제조사'); dfr
directory <- "C://Users/USER/Documents/MEGAsync/Coursera/2 취준/2021/빅공데_사전교육/R Program 입문 데이터 통계분석/자료/"
pinfo <- read.table(paste0(directory, "personal.txt"), header = TRUE); pinfo
pjobinfo <- read.table(paste0(directory, 'pjob.txt'), header = TRUE); pjobinfo
lifeinfo <- data.frame(취미 = c("목공예", "패러글라이딩", "등산", "꽃꽃이", "독서"),
                         관심사 = c("취업", "아파트 분양", "대출", "이직", "교통인프라")); lifeinfo
myinfo <- cbind(pinfo, lifeinfo); myinfo

otherinfo <- data.frame(이름 = c("황성주", "윤준영"),
                          거주지역 = c("강원", "충북"),
                          나이 = c(42, 55),
                          성별 = c("여", "여")); otherinfo

totinfo <- rbind(pinfo, otherinfo); totinfo
coreinfo <- merge(pinfo, pjobinfo); coreinfo

data1 <- subset(pinfo, select = -거주지역); data1
data2 <- subset(pinfo, select = c(이름,나이)); data2
data3 <- cbind(pinfo,
               결혼 = c(FALSE, TRUE, TRUE, FALSE, TRUE)); data3
data3[-3,]
data3[,-5]
ncol(data3)
nrow(data3)
colnames(data3)<- c("성명", "거주지", "나이", "성별")
names(data3)



# ******************************************************
#
# 12, 13. 조건제어문-1, 2
# if문
a <- 8
if(a%%2 == 0){
  result <- "짝수"
  result
}

a <- 123

if(a%%2 == 0){
  result <- "짝수"
} else{
  result <- "홀수"
}
result

a <- 77

if(a %% 3 == 0 && a %% 7 == 0){
  result <- "3의 배수이면서 7의 배수"
} else if(a %% 3 == 0){
  result <- "3의 배수"
} else if(a %% 7 == 0){
  result <- "7의 배수"
} else{
  result <- "3의 배수도, 7의 배수도 아니다"
}
result

# ifelse(조건, 참일 때, 거짓일 때)
# : 다수의 데이터에 대한 조건을 한꺼번에 처리할 때 사용한다

a <- c(10, 13, 17, 8, 20)

if(a %% 2 == 0){
  result <- "짝수"
} else{
  result <- "홀수"
}
result

ifelse(a %% 2 == 0, "짝수", "홀수")
result <- c(ifelse(a %% 2 == 0, "짝수", "홀수")); result
df <- data.frame(a, result); df


a <- c(10, 13, 17, 8, 20)
result <- c(ifelse(a > mean(a), "평균초과",
                   ifelse(a < mean(a), "평균 미만", "평균값"))); result

df2 <- data.frame(a, result); df2

# for문
y <- 0
for(x in 1:5){
  y <- y + x
}
y

y <- 0
for(x in 1:5){
  y <- y + x
  cat("1부터 ", x,"까지 합 = ", y, "\n")
}

a <- c(4, 25, 8, 33, 17, 20)
evensum <-0

for(x in 1:length(a)){
  if(a[x] %% 2 == 0) evensum <- evensum + a[x]
}

evensum


# 구구단
gugudan <- matrix(0, nrow = 9, ncol = 9); gugudan
for(i in 1:9){
  for(j in 1:9){
    gugudan[i,j] <- i*j
  }
}

gugudan



# while문

i <- 1
isum <- 0
while(i <= 10){
  isum <- isum + i
  i <- i+1
}

isum

i <- 1
isum <- 0
while(TRUE){
  isum <- isum + i
  cat("1부터 ", i, "까지 합 = ", isum, "\n")
  if(isum > 500) break
  i <- i + 1
}



# repeat문

a <- c(42, 25, 16, 7, 23, 12, 9)
i <- 1
repeat{
  if(a[i] < mean(a)) break
  i <- i + 1
}
a[i]
mean(a)



# ******************************************************
#
# 14, 15. 함수-1, 2
# mean(): 평균
# sum(): 합계
# sd(): 표준편차
# var(): 분산
# sort(): 정렬
# min(), max(): 최소, 최대
# median(): 중위수
# cor(): 상관계수
# range(): 범위
# rev(): 요소 나열순서 반대

a <- c(23, 13, 5, 17, 85); a
mean(a)
sd(a)
sort(a)
rev(a)

a1 <- c(2.34, 3.1, 4.3, 2.98); a1 
b1 <- c(2.4, 3.09, 4.3, 3.1); b1
cor(a1 ,b1)

# apply
height <- c(177, 180, 167, 165, 170, NA); height
weight <- c(NA, 77.3, 80, 60, NA, 64); weight
df <- data.frame(신장 = height, 체중 = weight)
names(df) <- c("신장", "체중")
df

apply(df, 2, mean, na.rm = TRUE)

# lapply(): 계산 결과를 list로 출력
# sapply(): 계산 결과를 벡터로 출력
# tapply(): 계산 결과를 특정부분으로 그룹화하여 출력

lapply(df, max, na.rm = TRUE)
sapply(df, max, na.rm = TRUE)

directory <- "C://Users/USER/Documents/MEGAsync/Coursera/2 취준/2021/빅공데_사전교육/R Program 입문 데이터 통계분석/자료/"
dflist <- read.table(paste0(directory, 'passlist.txt'), header = TRUE); dflist

tapply(dflist$평점, dflist$성별, mean)
tapply(dflist$나이, dflist$성별, mean, simplify = FALSE)

# 사용자 정의 함수
guideinfo <- function(){
  writeLines("분석에 최적화된 프로그램 R")
  # 매체에 저장하는 함수
}

guideinfo()

guideinfo <- function(msg){
  writeLines(msg)
}

guideinfo("나도 배운다")
guideinfo("R을 배워요")

basicst <- function(x){
  amin <- min(x)
  amax <- max(x)
  amean <- mean(a)
  avar <- var(a)
  asd <- sd(a)
  totinfo <- list(최소값 = amin, 최대값 = amax,
                     평균 = amean, 분산 = avar, 표준편차 = asd)
  return(totinfo)
}
a <- c(68, 75, 80, 85, 45, 70, 95, 55); a
basicst(a)

source(paste0(directory, 'calc.txt'))
a <- c(35, 77, 155, 50, 67); a
calc(c)



# ******************************************************
#
# 16, 17. 파일불러오기-1, 2
a <- scan(paste0(directory, 'irum.txt'), what = 'char', sep = ','); a
b <- scan(paste0(directory, 'irum.txt'), what = 'char'); b
x <- scan(); x

data <- readLines(paste0(directory, 'consumer.txt')); data

data <- read.csv(paste0(directory, 'seoulpopulation.csv'), header = TRUE); data

# install.packages("XLConnect")
# require(XLConnect) # library와 유사하나, 인스톨 안했으면 경고만 해줌
# readWorksheet("",
#               sheet = "",
#               startRow = ,
#               startCol = ,
#               endRow = ,
#               endCol = )

wb <- loadWorkbook("subway.xlsx"); wb
df <- readWorkbook(wb, sheet = 1, header = TRUE); df
names(df) <- c("구분", "역이름", "1월이용자", "2월이용자", "3월이용자", "합", "1일평균")
df


# install.packages("xlsx")
require(xlsx)
df2 <- read.xlsx2("subway.xlsx", 1); df2

# 엑셀파일에서 일부분 복사해서 사용하기
a <- readClipboard(); a
df <- read.table(file = "clipboard", sep = "\t", header = TRUE); df



# ******************************************************
# 
# 18, 19, 20. plot() 함수-1, 2, 3
plot.new()
age <- c(24, 36, 40, 42, 27, 35, 55, 48)
plot(age, main = "나이분포", ylab = "나이", col = 'green')

plot.new()
height <- c(165, 177, 167, 173, 178, 180, 172, 175, 168)
weight <- c(60, 70, 66, 50, 80, 77, 95, 50, 55)
plot(weight, height, main = "키와 몸무게 분포",
     xlab = "체중", ylab = "키", col = rainbow(length(height)))

plot.new()
height <- c(165, 177, 167, 173, 178, 180, 172, 175, 168)
weight <- c(60, 70, 66, 50, 80, 77, 95, 50, 55)
plot(weight, height, main = "키와 몸무게 분포",
     xlab = "체중", ylab = "키", col = rainbow(length(height)),
     type = 'o')
# l: line
# b: 동그라미와 선 같이
# o: 동그라미를 지나는 선과 같이

plot.new
x <- 1:5
y <- x
par(mfrow = c(2, 3))
par(pch=9, cex=1)
kind <- c('p', 'b', 'l', 'o', 's', 'h')
for(i in 1:length(kind)){
  title <- paste("type: ", kind[i])
  plot(x, y, type = kind[i], main = title,
       col = rainbow(i))
}


plot.new
x <- 1:5
y <- x
plot(x, y, main = "sample")
abline(h=c(1:5), v = c(1:5), col = "red", lty = "dotted")
text(3,3, "기본점")


plot.new()
height <- c(165, 177, 167, 173, 178, 180, 172, 175, 168)
weight <- c(60, 70, 66, 50, 80, 77, 95, 50, 55)
irum <- c('김', '박', '최', '신', '정', '한', '황', '이')
plot(weight, height, main = "키와 몸무게 분포",
     xlab = "체중", ylab = "키", col = rainbow(length(height)))
abline(h = seq(165, 180, 5), col = 'grey', lty = 2)
text(mean(weight), mean.default(height), "표준", col = "purple")
axis(2, at = "hegith", labels = height, col.axis = "grey")
legend("bottomright", col = rainbow(length(height)),
       legend = irum, lty = 1)



# ******************************************************
#
# 21, 22, 23. plot 종류-1, 2, 3
plot.new()
y1 <- c(0.8, 0.5, 0.4, 0.4, 0.5, 0.7)
y2 <- c(0.8, 1.3, 1.0, 1.3, 0.9, 1.2)
x <- c(1:6)
par(new = TRUE)
plot(x, y1, ylab = "소비자 물가 상승률", type = "o", col = "red",
     ylim = c(0.3, 1.5))
par(new = TRUE)
plot(x, y2, lty = "dotted", ylim = c(0.3, 1.5), 
     ylab = "소비자 물가 상승률", type = "l", col = "blue")
legend(locator(1), legend = c('2015년', '2016년'), lty = 1, bg = "yellow",
       col = c('red', 'blue'))

plot.new()
x <- c(100, 200, 300, 350, 500)
barplot(x, name = c('a', 'b', 'c', 'd', 'e'),
        las = 1, col = "yellow", ylim = c(100, 600))


plot.new()
data <- read.csv(paste0(directory, "seoulpopulation.csv"), sep = ",", header = TRUE); data
data1 <- subset(data, 여자 >= 230000); data1
gu <- data1$자치구
barplot(data1$여자, names = gu, las = 1, col = 'darkgreen',
        horiz = TRUE, main = "서울 여성 23만명 이상 거주 자치구")

plot.new()
data <- read.csv(paste0(directory, "seoulpopulation.csv"), sep = ",", header = TRUE); data
tot <- rowSums(data[, c('여자', '남자')], na.rm = TRUE)
data <- cbind(data, tot); data
data1 <- subset(data, tot >= 500000); data1
barplot(as.matrix(data1[1:6, 2:3]), beside = TRUE,
        legend = c('남', '여'), col = c('darkgreen', 'darkblue'),
        main = "서울 50만명 이상 거주 자치구", ylim = c(0, 400000))


plot.new()
x <- c(23, 33, 32, 45, 37, 28, 15, 35, 43, 27, 46, 33, 38, 46, 50, 25); x
hist(x, main = "연령분포", xlim = c(15, 50),
     col = 'darkred')

plot.new()
data <- read.csv(paste0(directory, "birthdie.csv"),
                 sep = ",", header = TRUE); data
boxplot(data$출생, data$사망, names = c('출생', '사망'),
        col = c('darkred', 'darkblue'),
        main = "서울 2013-2014 출생사망자 비교")

par.new()
x <- c(27, 43, 15)
pie(x, radius = 1, labels = c('한식', '일식', '중식'),
    col = c('darkgreen', 'darkred', 'darkblue'))



# ******************************************************
#
# 24. ggplot2 개요 및 기본함수 사용방법 학습
# 25. ggplot2 레이어 개념 실습
# 26. Geom._point, geom._bar, geom._line 함수 이용한 다양한 그래프 작업 실습
# had.co.nz/ggplot2
# ggplot2 자세한 설명이 있다
# install.packages("ggplot2")
library(ggplot2)

a <- c(65, 70, 75, 80); a
b <- c(33, 55, 60, 80); b
qplot(a, b, color = "yellow")
# color을 colour이라고 해도 됨

data1 <- data.frame(mat = c(55, 75, 80, 65, 90, 100, 70, 85), 
                    eng = c(65, 100, 45, 50, 75, 90, 90, 65),
                    avg = c(53, 70, 83, 70, 93, 95, 75, 80),
                    irum = c("김", "이", "박", "최", "황", "문", "윤", "정"))
data1
ggplot(data1, aes(avg, mat)) +
  geom_line(color = "darkred") +
  geom_point(color = "yellow")

qplot(avg, mat, data = data1, geom = c("line", "point"),
      color = "purple")


directory <- "C://Users/USER/Documents/MEGAsync/Coursera/2 취준/2021/빅공데_사전교육/R Program 입문 데이터 통계분석/자료/"
datainfo <- read.csv(paste0(directory, "highwaybus09.csv"),
                     sep = ",", header = TRUE); datainfo
ggplot(datainfo, aes(총운행횟수, 이용율)) + 
  geom_point(aes(colour = 선별, shape = 선별, size = 거리))


ggplot(data1, aes(mat, avg)) +
  geom_line(color = "darkred") +
  geom_point(color = "purple") +
  geom_line(aes(eng, avg), colour = "darkgreen")+
  geom_point(aes(eng, avg), colour = "pink")


ggplot(datainfo, aes(선별)) + 
  geom_bar(fill = "orange", colour = "red")

meandf <- as.data.frame(with(datainfo,
                             tapply(이용율, 선별, mean, na.rm = TRUE)))
meandf$노선 <- rownames(meandf)
names(meandf) <- c("이용율", "노선")
meandf
ggplot(meandf, aes(노선, 이용율)) +
  geom_bar(stat = "identity", aes(fill = 노선))


meandf <- as.data.frame(with(datainfo,
                             aggregate(이용율,
                                          list(선별 = 선별, 차종 = 차종),
                                          mean, na.rm = TRUE)))
meandf
rownames(meandf)
meandf$평균이용율 <- rownames(meandf)
meandf
names(meandf) <- c("선별", "차종", "평균이용율"); meandf
ggplot(meandf, aes(선별, 평균이용율)) +
  geom_bar(stat = "identity", aes(fill = 차종))

ggplot(meandf, aes(선별, 평균이용율)) +
  geom_bar(stat = "identity", aes(fill = 차종), position = "fill")

ggplot(meandf, aes(선별, 평균이용율)) +
  geom_bar(stat = "identity", aes(fill = 차종), position = "dodge")

ggplot(meandf, aes(선별, 평균이용율)) +
  geom_bar(stat = "identity", aes(fill = 차종), position = "dodge") +
  geom_text(aes(y=평균이용율, label = 평균이용율),
            color = "darkgrey", size = 3)


>>>>>>> 24e9726d87479b49149d6d32fbc53ef728d5343e
# *****************************************************