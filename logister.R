#1
x <- c(5.0,3.0)
y <- c(5000000.0,4000000.0)
m <- lm(y ~ x)

#2
x2 <- c(10.0,12.0,9.5,22.2,8.0)
y2 <- c(360.2,420.0,359.5,679.0,315.3)
m2 <- lm(y2 ~ x2)
plot(x2,y2)
abline(m2,col='red')

#3
new_women = data.frame(weight=65.5,height=121)
women <- rbind(women,new_women)
women_model <-lm(weight~height,data=women)
plot(women)
abline(women_model,col='blue')

#4
m4 = glm(admit~.,data = ucla family = binomial)
s = data.frame(gre = c(376), gpa =c(3.6),rank=c(1))
s = data.frame(gre = c(376), gpa =c(3.6),rank=c(2))
s = data.frame(gre = c(376), gpa =c(3.6),rank=c(3))
s = data.frame(gre = c(376), gpa =c(3.6),rank=c(4))
for (i in 1:4) {
  s = data.frame(gre = c(376), gpa =c(3.6),rank=c(i))
  predict(m4,newdata = s ,type = 'response')
}
