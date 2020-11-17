# 1st project
# chapter 1) Exploratory data analysis, EDA
# 
# 통계학: 데이터 분석과 모델링을 다루는 일종의 응용과학
# 추론: 적은 표본을 가지고 더 큰 모집단에 대한 결론을 도출하기 위한
# 일련의 복잡한 과정
# 데이터 분석: 통계적 추론을 하나의 구성 요소
# 데이터 과학의 가장 중요한 도전
# : 폭발적인 양의 원시 데이터를 활용 가능한 형태의 정보로 변환하는 것
# 
# 1.1 Kinds of data
# continuous: time
# discrete: times
# categorical: list
# binary: T/F
# ordinal: grade
#
# 1.2 Rectangular data
# data frame: table
# feature: column, income, predictor, variables
# outcome: dependence variables, goals
# record: row, case, pattern, sample
# 
# 1.3 location estimation
# mean: sum / count
# weighted mean: sum(individual * weight) / sum(weight)
# median: 50th percentile 
# weighted median: 50th percentile of sum(individual * weight) / sum(weight)
# trimmed mean: mean removing extreme value
# robust: means resistant
# outlier: sth very different others
#
# exercise) 1.3.3
state <- read.csv(file="data/state.csv")
mean(state[["Population"]])
mean(state[["Population"]], trim=0.1) # trim = reducing 10% both ends
median(state[["Population"]])
weighted.mean(state[["Murder.Rate"]], w=state[["Population"]])
# install.packages("matrixStats")
library("matrixStats")
weightedMedian(state[["Murder.Rate"]], w=state[["Population"]])
# 
# 1.4 variability estimation
# deviation: error
# variance: sum(deviation(w/ mean)^2) / n-1
# standard deviation: square root (variance), l2 norm
# mean absolute deviation: mean(absolute(deviation(w/ mean))), l1 norm
# median absolute deviation from the median: median(absolute(deviation(w/ median)))
# range: difference between max and min
# order statistics: order
# percentile: number where a certain percentage of scores fall below that number
# interquartile range: 75th percentile - 25th percentile, IQR
# 
# exercise) 1.4.3
state <- read.csv(file="data/state.csv")
sd(state[["Population"]])
IQR(state[["Population"]])
mad(state[["Population"]])
# 
# 1.5 explore data variance
# box-plot: 
# frequency table: 
# histogram: 
# density plot: 
# 
# exercise) 1.5.1
state <- read.csv(file="data/state.csv")
quantile(state[["Murder.Rate"]], p=c(.05, .25, .5, .75, .95))

# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 