## 1. 변수
age <- 20
age 
age <- 30
age 

## 2. 데이터 타입

#숫자 데이터 타입 
age <- 20 
class(age)

age <- 20L 
class(age) 

# 문자 데이터 타입 
name <- "LJI"    #control + enter 
class(name)

# 논리 데이터 타입 
is_effective <- T 
is_effective 
is_effective <- F 
is_effective 
class(is_effective) 

# 펙터 데이터 타입 
sido <- factor("서울", c("서울","부산","제주"))
sido
class(sido)
levels(sido)

## 3. 상수

# NULL과 NA
a <- NULL  # NULL은 변수에 값이 아직 정해지지 않았다는 의미로 변수를 초기화할 때 사용
jumsu <- c(NA, 90, 100)  # NA는 '결측치'를 의미하는 상수

# Inf와 NaN
10/0  # Inf는 무한대 실수를 의미하는 상수
0/0  # NaN은 Not a Number를 의미하는 상수
