##1
#a
1:20
#b
20:1
#c
c(1:20,20:1)
#d
tmp<-c(4,6,3) # c로 백터 표현
tmp # 출력 이렇게 저장된 값
#e
rep(tmp,times=10) ##swift에서 Array(default:count:) 랑 비슷  배열 초기값 정해주고 생성
#f
#rep(x, …)
#rep.int(x, times)
#rep_len(x, length.out)  
rep(tmp,length=31)
#g
rep(tmp,times=c(10,20,30))
#####
##2
x<-seq(3,6,by=0.1)
result = exp(x)*cos(x)
##3
#a
result = 0.1^seq(3,36,by=3)*0.2^seq(1,34,by=3)
#b
result = 2^(1:25)/(1:25)
##4
#a
sigma <- 10:100
result = sum(sigma^3+4*sigma^2)
#b
sigma <- 1:25
result = sum((2^sigma/sigma)/(3^sigma/sigma^2))
##5
#a
result = paste('label',1:30) ## zip() 같은거 같다
#b
result = paste0('fn',1:30)
##6
set.seed(50) ##난수 생성할 키값 같은거 시뮬레이션 전 같은값추출할려고 시드값 고정
xVec<-sample(0:999,250,replace=T) ##난수생성 중복허용 250개
yVec<-sample(0:999,250,replace=T)
#a ##[-1] --> 해당번호 인덱스에 있는 값 제거 (음수입력하면)
yVec[-1] -  xVec[-length(xVec)]
#b
result = sin(yVec[-length(yVec)]) / cos(xVec[-1])
#c
result = xVec[-c(249,250)] + 2*xVec[-c(1,250)]-xVec[-c(1,2)]
#d
result = sum(exp(-xVec[-1])/(xVec[-length(xVec)]+10))
##7
#a
result = yVec[yVec>600]
#b
result = which(yVec>600)
#c
result = xVec[yVec>600]
#d
result = sqrt(abs(xVec-mean(xVec))) ## mean() 평균값
#e
result = sum( yVec>max(yVec)-200 ) ## max(vector) ???> vector 에서 최고값 도출
#f
result = sum(xVec%2==0) ##for문이 필요없어보인다
#g
xVec[sort(yVec)] ##문제가 잘 이해 x
#h
