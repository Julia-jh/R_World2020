# R
# 
# 3. R 구조 및 특징
# - 패키지 설치
# install.packages("패키지명")
<<<<<<< HEAD
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
# remove.packages("패캐지명")
#
=======
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
# remove.packages("패캐지명")
# 
>>>>>>> 0a4f65e72cf2e036c0b8b64f7287b81f10869dd7
# - R 기본사항
# - 대소문자 구분
# - 종료 명령어: q()
# - 작업디렉토리 설정
# - setwd("작업디렉토리")
# - 실행 명령어: crtl + R
# - 주석처리: # 주석내용~
<<<<<<< HEAD
#
#
#
#******************************************************
#
=======
  #   
  #   
  #   
  #******************************************************
  #   
  >>>>>>> 0a4f65e72cf2e036c0b8b64f7287b81f10869dd7
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



# ******************************************************
#
# 5, 6. 자료타입-1, 2
Sys.Date() # 지금 날짜
d <- Sys.Date()
<<<<<<< HEAD
as.Date(d)# 괄호 안 데이터를 날짜데이터로 바꿈
=======
  as.Date(d)# 괄호 안 데이터를 날짜데이터로 바꿈 
>>>>>>> 0a4f65e72cf2e036c0b8b64f7287b81f10869dd7
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


<<<<<<< HEAD

# ******************************************************
#
# 7, 8. 벡터-1, 2
# - vector
=======
  # ******************************************************
  #
  # 7, 8. 벡터-1, 2
  # - vector   
  >>>>>>> 0a4f65e72cf2e036c0b8b64f7287b81f10869dd7
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



# ******************************************************
<<<<<<< HEAD
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




# ******************************************************
#
# 21, 22, 23. plot 종류-1, 2, 3


# ******************************************************

# 24. ggplot2 개요 및 기본함수 사용방법 학습





# ******************************************************

# 25. ggplot2 레이어 개념 실습





# ******************************************************

# 26. Geom._point, geom._bar, geom._line 함수 이용한 다양한 그래프 작업 실습





# *****************************************************