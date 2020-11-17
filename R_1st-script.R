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
# deviation: 
# variance: 
# standard deviation: 
# mean absolute deviation: 
# median absolute deviation from the median: 
# range: 
# order statistics: 
# percentile: 
# inerquartile range: 
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
# 
# 
# 
# 
# 
# 
# 
# 
# 