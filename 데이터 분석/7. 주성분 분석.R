# 6. 주성분 분석

# [실습1] 주성분 분석: princomp()

fit <- princomp(iris[, 1:4], cor = TRUE)    # 상관행렬 이용한 주성분 분석 수행, cor = FALSE: 공분산행렬(디폴트)


# [실습2] 주성분 분석: summary()

summary(fit)


# [실습3] 주성분 분석: loadings()

loadings(fit)


# [실습4] 주성분 개수 선택법 - 스크리 그래프

screeplot(fit, type = "lines", main = "scree plot")
