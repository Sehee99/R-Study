# 4. 다중선형회귀


# [실습1] 다중선형회귀|모델 생성

height_father <- c(180, 172, 150, 180, 177, 160, 170, 165, 179, 159)  # 아버지 키
height_mother <- c(160, 164, 166, 188, 160, 160, 171, 158, 169, 159)  # 어머니 키
height_son <- c(180, 173, 163, 184, 165, 165, 175, 168, 179, 160)  # 아들 키
height <- data.frame(height_father, height_mother, height_son)
head(height)

model <- lm(height_son ~ height_father + height_mother, data = height)
model

# 회귀계수
coef(model)


# [실습2] 다중선형회귀|잔차

# 잔차
r <- residuals(model)
r[0:4]

# 잔차 제곱합
deviance(model)


# [실습3] 다중선형회귀|예측

# 예측 (점 추정)
predict.lm(model, newdata = data.frame(height_father = 170, height_mother = 160))

# 예측 (구간 추정)
predict.lm(model, newdata = data.frame(height_father = 170, height_mother = 160), interval = "confidence")


# [실습4] 다중선형회귀|결정계수와 수정된 결정계수

summary(model)


# [실습5] 다중선형회귀|설명변수 선택

model <- lm(mpg ~ ., data = mtcars)
# mpg ~ . 는 종속변수가 mpg이며 그 외 모든 변수가 설명변수임을 의미하는 포뮬러(formula)

new_model <- step(model, direction = "both")

# 위처럼 현재 모델의 AIC를 구하고, 각 변수를 추가 또는 삭제했을 때 AIC를 구한 후,
# AIC가 가장 작아질 수 있는 변수를 추가하거나 제거하는 과정을 반복하여
# 최적의 설명변수를 추출한다.

### mtcars 데이터프레임의 변수 설명
# mpg: 자동차 연비
# wt: 자동차 중량
# qsec: 1/4 mile time
# am: 변속기 (0 = 자동, 1 = 수동)


# [실습6] 선형회귀|모델 진단 그래프
model <- lm(mpg ~ wt + qsec + am, data = mtcars)
plot(model)
