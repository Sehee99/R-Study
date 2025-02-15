# 1. 추론통계

# [실습1] t-검정|일표본 검증

# A병원에서 치료한 성인 여성 감기 환자들의 치유 기간 데이터 (단위: 일)
data <- c(5, 6, 7, 5, 5, 9, 10, 3, 3, 3.5, 8, 8, 7, 2, 3, 3.5, 6, 6, 6, 6)

# 모평균이 7보다 적은지 단측 검정
t.test(data, mu=7, alternative = 'less')


# [실습2] t-검정|대응이표본 검증

# 다이어트약 복용 전 몸무게
before <- c(68.12, 56.94, 57.36, 54.64, 64.33, 48.49, 68.72, 56.19, 61.6, 58.75, 67.31, 49.7, 58.39, 58.08, 65.67, 54.5, 59.14, 55.61, 60.21, 62.91)

# 다이어트약 복용 5개월 후 몸무게
after <- c(65.90, 54.79, 57.82, 54.64, 64.84, 47.34, 67.87, 54.58, 60.65, 58.79, 65.71, 48.81, 57.0, 56.52, 64.13, 53.94, 57.22, 55.32, 61.61, 63.22)

# 대응이표본이므로 paired = TRUE 옵션 사용
# 단측 검정으로 before 데이터가 더 큰지 검정하므로 alternative = "greater" 옵션 사용
t.test(before, after, paired = TRUE, var.equal = TRUE, alternative = "greater")


# [실습3] t-검정|독립이표본 검증

# 서울 지역의 남학생의 몸무게 데이터
Seoul <- c(43.12, 40.94, 42.36, 50.64, 50, 43.39, 43.72, 40.19, 46.6, 43.75, 42.31, 44.7, 43.39, 33.08, 40.67, 49.5, 34.14, 40.61, 35.21, 37.91)

# 부산 지역의 남학생의 몸무게 데이터
Busan <- c(41.74, 42.35, 40.62, 28.64, 49.64, 40.94, 43.25, 40.3, 56.03, 43.77, 51.3, 44.26, 42.6, 32.19, 39.72, 49.2, 33.03, 40.45, 36.03, 38.1)

# 독립이표본이므로 paired = FALSE 옵션 사용
# 양측 검정이므로 alternative = "two.sided" 옵션 사용
# Seoul 데이터와 Busan 데이터의 분산이 동일하지 않아 var.equal = FALSE 옵션 사용
t.test(Seoul, Busan, paired = FALSE, var.equal = FALSE, alternative = "two.sided")


# [실습4] 분산분석|일원분산분석

anova_result <- aov(Sepal.Length ~ Species, data = iris)
# 종속변수(Sepal,Length), 독립변수(Species)

summary(anova_result)
