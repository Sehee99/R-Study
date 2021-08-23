### 1 데이터 대표값 탐색
## 1.1 평균과 중앙값

# 평균
A_salary <- c(25, 28, 50, 60, 30, 35, 40, 70, 40, 70, 40, 100, 30, 30)  # 백만원 단위
B_salary <- c(20, 40, 25, 25, 35, 25, 20, 10, 55, 65, 100, 100, 150, 300)

mean(A_salary)
mean(B_salary)

# 결측값(NA)이 있는 경우 결측값을 제거하고 평균을 구할 때는 na.rm = T 인자를 사용
mean(A_salary, na.rm = T)

# 중앙값
median(A_salary)
median(B_salary)

# 결측값(NA)이 있는 경우 결측값을 제거하고 중앙값을 구할 때는 na.rm = T 인자를 사용
median(A_salary, na.rm = T)


## 1.2 절사평균

mean(A_salary, trim = 0.1)  # 양끝 10%씩 값을 제외하고 평균을 구함함
mean(B_salary, trim = 0.1)


### 2 데이터 분산도 탐색
## 2.1 최소값, 최대값으로 범위 탐색

# 범위: range()
range(A_salary)
range(B_salary)

# 최소값: min(), 최대값: max()
min(A_salary)
max(A_salary)
min(B_salary)
max(B_salary)


## 2.2 분산과 표준편차

# 분산
var(A_salary)
var(B_salary)

# 표준편차
sd(A_salary)
sd(B_salary)


### 3 데이터 분포 탐색

## 3.1 백분위수와 사분위수

# 90% 백분위수
quantile(A_salary, 0.9)
quantile(B_salary, 0.9)

# 사분위수
quantile(A_salary)
quantile(B_salary)


## 3.2 상자그림
boxplot(A_salary, B_salary, names = c("A회사 salary", "B회사 salary"))


## 3.3 히스토그램
hist(A_salary, xlab = "A사 salary", ylab = "인원수, break =5")
hist(B_salary, xlab = "B사 salary", ylab = "인원수, break =5")


## 3.4 도수분포표
# 수치 데이터 -> 도수분포표 생성시 cut() 함수
cut_value <- cut(A_salary, breaks = 5)
freq <- table(cut_value)
freq

# 범주형 데이터 -> table() 함수로 도수분포표 생성
A_gender <- as.factor(c('남', '남', '남', '남', '남', '남', '남', '남', '남', '여', '여', '여', '여', '여'))
B_gender <- as.factor(c('남', '남', '남', '남', '여', '여', '여', '여', '여', '여', '여', '남', '여', '여'))

A <- data.frame(gender <- A_gender, salary <- A_salary)
B <- data.frame(gender <- B_gender, salary <- B_gender)

freqA <- table(A$gender)
freqA

freqB <- table(B$gender)
freqB


# 상대적 빈도표

# A사의 남녀 도수분포표를 구해 저장한 freqA를 이용
prop.table(freqA)

# B사의 남녀 도수분포표를 구해 저장한 freqB를 이용
prop.table(freqB)


## 3.5 막대 그래프

# A사의 남녀 도수분포표를 구해 저장한 freqA를 이용
barplot(freqA, names = c("남", "여"), col = c("skyblue", "pink"), ylim = c(0, 10))
title(main = "A사")

# B사의 남녀 도수분포표를 구해 저장한 freqB를 이용
barplot(freqB, names = c("남", "여"), col = c("skyblue", "pink"), ylim = c(0, 10))
title(main = "B사")


## 3.6 파이 그래프

pie(x = freqA, col = c("skyblue", "pink"), main = "A사")
pie(x = freqB, col = c("skyblue", "pink"), main = "B사")


### 4 변수 간 관계 탐색

## 4.1 산점도 그래프

A_salary <- c(25, 28, 50, 60, 30, 35, 40, 70, 40, 70, 40, 100, 30, 30)  # 연봉 변수
A_hireyears <- c(1, 1, 5, 6, 3, 3, 4, 7, 4, 7, 4, 10, 3, 3)  # 근무년차 변수
A <- data.frame(salary <- A_salary, hireyears <- A_hireyears)

# 산점도 그래프
plot(A$hireyears, A$salary, xlab = "근무년수", ylab = "연봉(백만원단위)")

# pairs() 함수: 여러가지 변수의 산점도 그래프를 한눈에 볼 수 있도록 작성
pairs(iris[, 1:4], main = "iris data")


## 4.2 상관계수
cor(A$hireyears, A$salary)

## 4.3 상관행렬
cor(iris[, 1:4])

## 4.4 상관행렬 히트맵
heatmap(cor(iris[, 1:4]))