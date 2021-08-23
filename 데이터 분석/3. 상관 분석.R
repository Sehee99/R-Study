# [실습1] 피어슨 상관계수 구하기1

cor(Orange$circumference, Orange$age)

plot(Orange$circumference, Orange$age, col = "red", pch = 19)  # 산점도 그리기


# [실습2] 피어슨 상관계수 구하기2

cor(iris[, 1:4])


# [실습3] 상관계수 검정
cor.test(iris$Petal.Length, iris$Petal.Width, method = "pearson")  # 피어슨 상관계수 검정

cor.test(iris$Petal.Length, iris$Sepal.Width, method = "spearman")  # 스피어만 상관계수 검정
