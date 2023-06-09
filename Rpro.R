head(pressure)

plot(pressure$temperature,
     pressure$pressure,
     main='온도와 기압',
     xlab='온도(화씨)',
     ylab='기압',
)

head(cars)

plot(cars$speed,
     cars$dist,
     main='자동차 속도와 제동거리',
     xlab='속도',
     ylab='제동거리',
     )

cor(cars$speed, cars$dist)

st <- data.frame(state.x77)
head(st)

plot(st)

cor(st)

z <- c(1,2,3,NA,5,NA,8)
sum(z)
is.na(z)
sum(is.na(z))
sum(z, na.rm=TRUE)

z1 <- c(1,2,3,NA,5,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)
z1[is.na(z1)] <- 0
z1
z3 <- as.vector(na.omit(z2))
z3

v1 <- c(1,8,7,2,3,4)
v1 <- sort(v1)
v1

v2 <- sort(v1, decreasing = TRUE)
v2

name <- c("장민서","조익범","김현성","이준희")
sort(name)

order(name)
order(name, decreasing = TRUE)


install.packages('fmsb')
library(fmsb)

score <- c(80,60,95,85,40)
max.score <- rep(100,5)
min.score <- rep(0,5)
ds <- rbind(max.score,min.score, score)
ds <- data.frame(ds)
colnames(ds) <- c('국어','영어','수학,','물리','음악')
ds

radarchart(ds)

radarchart(ds,  #데이터프레임
           pcol = 'darkgreen', # 다각형 선의 색
           pfcol = rgb(0.2,0.5,0.5,0.5), # 다각형 내부 색
           plwd = 3, # 다각형 선의 두께
           cglcol = 'grey', # 거미줄의 색
           cglty = 1, # 거미줄의 타입
           cglwd = 0.8, # 거미줄의 두께
           axistype = 1, # 축의 레이블 타입
           seg = 4, # 축의 눈금 분할
           axislabcol = 'grey', # 축의 레이블 색
           caxislabels = seq(0,100,25) # 축의 레이블 값
)