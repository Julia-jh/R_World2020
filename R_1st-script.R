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
state <- read.csv(file = "data/state.csv")
mean(state[["Population"]])
mean(state[["Population"]],
     trim = 0.1) # trim = reducing 10% both ends
median(state[["Population"]])
weighted.mean(state[["Murder.Rate"]],
              w = state[["Population"]])
# install.packages("matrixStats")
library("matrixStats")
weightedMedian(state[["Murder.Rate"]],
               w = state[["Population"]])
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
state <- read.csv(file = "data/state.csv")
sd(state[["Population"]])
IQR(state[["Population"]])
mad(state[["Population"]])
# 
# 1.5 explore data variance
# box-plot: box w/ whisker
# frequency table: every interval has same cardinality
# histogram: graphic of frequency table, x: interval, y: frequency
# density plot: mostly use kernel density estimation
# 
# exercise) 1.5.1
state <- read.csv(file = "data/state.csv")
quantile(state[["Murder.Rate"]],
         p = c(.05, .25, .5, .75, .95))
boxplot(state[["Population"]]/1000000,
        ylab = "Population (milions)")
# 
# exercise) 1.5.2
state <- read.csv(file = "data/state.csv")
breaks <- seq(from = min(state[["Population"]]),
              to = max(state[["Population"]]),
              length = 11)
pop_freq <- cut(state[["Population"]],
                breaks = breaks,
                right = TRUE,
                include.lowest = TRUE)
table(pop_freq)
hist(state[["Population"]],
     breaks = breaks)
# 
# exercise) 1.5.3
state <- read.csv(file = "data/state.csv")
hist(state[["Murder.Rate"]],
     freq = FALSE)
lines(density(state[["Murder.Rate"]]),
      lwd = 3,
      col = "blue")
# 
# 1.6 explore the binary data & categorical data
# mode: value that appears most frequently in a data set
# expected value: weighted mean of category
# bar chart
# pie chart
# 
# exercise 1.6)
dfw <- read.csv(file = "data/dfw_airline.csv")
barplot(as.matrix(dfw)/6,
        cex.axis = .5)
# 
# 1.7 Correlation
# 
# correlation coefficient: -1~1
# correlation matrix: 
# scatterplot
# 
# exercise 1.7)
sp500_px <- read.csv(file = "data/sp500_data.csv")
sp500_sym <- read.csv(file = "data/sp500_sectors.csv",
                      stringsAsFactors = FALSE)
etfs <- sp500_px[row.names(sp500_px) > "2012-07-01",
                 sp500_sym[sp500_sym$sector == "etf", "symbol"]]
# install.packages("corrplot")
library(corrplot)
corrplot(cor(etfs), method = "ellipse")
# 
# exercise 1.7.1)
telecom <- sp500_px[,sp500_sym[sp500_sym$sector == "telecommunications_services", 'symbol']]
telecom <- telecom[row.names(telecom)>"2012-07-01", ]
plot(telecom$T, telecom$VZ, xlab = "T", ylab = "VZ")
# 
# 1.8 explore more than two variables
# 
# contingency table: frequency of more than two categorical variables
# hexagonal binning
# contour plot
# violin plot 
# 
# exercise 1.8.1-1)
kc_tax <- read.csv(file = "data/kc_tax.csv")
kc_tax0 <- subset(kc_tax, TaxAssessedValue < 750000 &
                    SqFtTotLiving > 100 &
                    SqFtTotLiving < 3500)
nrow(kc_tax0)
# 
# exercise 1.8.1-2)
# install.packages("ggplot2")
# install.packages("hexbin")
library(ggplot2)
library(hexbin)
ggplot(kc_tax0,
       (aes(x = SqFtTotLiving, y = TaxAssessedValue))) +
  stat_binhex(colour = "white") +
  theme_bw() + 
  scale_fill_gradient(low = "white", high = "purple") + 
  labs(x = "Finished Square Feet", y = "Tax Assessed Value")
# 
# exercise 1.8.1-3)
# install.packages("Rcpp")
library(Rcpp)
ggplot(kc_tax0,
       aes(SqFtTotLiving, TaxAssessedValue)) +
  theme_bw() + 
  geom_point(colour = "blue", alpha = 0.1) +
  geom_density2d(colour = "white") + 
  labs(x = "Finished Square Feet", y = "Tax Assessed Value")
# 
# exercise 1.8.2
# install.packages("descr")
library(descr)
lc_loans <- read.csv(file = "data/lc_loans.csv")
x_tab <- CrossTable(lc_loans$grade, lc_loans$status,
                      prop.c = FALSE, prop.chisq = FALSE, prop.t = FALSE)
x_tab
# 
# exercise 1.8.3
airline_stats <- read.csv(file = "data/airline_stats.csv")
boxplot(pct_carrier_delay ~ airline, data = airline_stats, ylim = c(0, 50))
#
ggplot(data = airline_stats,
       aes(airline, pct_carrier_delay))+
       ylim(0, 50) +
       geom_violin() + 
       labs(x = "", y = "Daily % of Delayed Flights")
# 
# 
# exercise 1.8.4
ggplot(subset(kc_tax0, ZipCode %in% c(98188, 98105, 98108, 98126)),
       aes(x = SqFtTotLiving, y = TaxAssessedValue)) +
       stat_binhex(colour = "white") +
       theme_bw() +
       scale_fill_gradient(low = "white", high = "blue") +
       labs(x = "Finished Square Feet", y = "Tax Assessed Value") +
       facet_wrap("ZipCode")
# 