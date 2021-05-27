library(dplyr)
library(dplyr)
library(ggplot2)
#1
gapminder %>% filter(year == 1952 & continent == "Asia") %>%
              ggplot(aes(reorder(country, pop), pop)) +
              geom_bar(stat="identity")+
              coord_flip()

gapminder %>% filter(year == 1952 & continent == "Asia") %>%
  ggplot(aes((country, pop)) +
  geom_bar(stat="identity")+
  coord_flip()
#지금 1번과 2번이 다른부분이 aes()함수의 파라메터에 reoder함수를 적용했냐 안했냐이다. 
#만약 1번과 같이 reoder함수를 적용하면 선점도 정보가 국가에 따른 인구순으로 정렬된후(reoder) 출력이 될것이다.

#2
gapminder %>% filter(year == 1952) %>%
              ggplot(aes(continent,lifeExp)) +
              geom_boxplot()

ggplot(gapminder,aes(continent,lifeExp)) +
        geom_point(alpha=0.2,size=1.0,position="jitter")
#1번같은 경우는 filter로 1952년도에 대륙에따른 기대수명을 플랏 boxplot형태로 나타낸것이고
#2번같은 경누는 point로 점을 찍어 모든년도에 대한 대륙과 기대수명정보를 점으로 나타낸 것이다. 

#3
plot(cars,type="p",main="Cars")

ggplot(cars,aes(x="x",y="y")) +
       geom_point()


#4
matplot(iris[,1:4],type="l")
legend("topleft",names(iris)[1:4],lty=1:4,col=1:4)

ggplot(iris,aes(x="x",y="y")
      +geom_line()
      +them(legend.position = c(0,1))
      
#5
gapminder %>%
    filter(continent=='Africa') %>%
    ggplot(aes(country, lifeExp)) +
      geom_bar(stat="identity") +
      coord_flip()

gapminder %>%
  filter(continent=='Africa') %>%
  ggplot(aes(reorder(country, -lifeExp),lifeExp) + //reoder(-) 함으로써 내림차순적용 
  geom_bar(stat="identity") +
  coord_flip()


#6
gapminder %>%
  filter(continent == "Asia") %>%
  ggplot(aes(year,gdpPercap,col=country)) +
  geom_point() + geom_line()

#7
gapminder %>%
  ggplot(aes(gdpPercap,lifeExp,col=continent)) +
  geom_bar(stat="identity")+
  coord_flip()

#8 -1 
gapminder %>%
    filter(year=="1952") %>%
    ggplot(aes(country,pop)) +
    coord_polar("인구",start=0)
gapminder %>%
  filter(year=="1952") %>%
  ggplot(aes(country,pop)) +
  geom_bar(stat="identity")
#8-2

for(people in 1952:2017) {
  gapminder %>%
    ggplot(people) +
    geom_bar(stat="identity")
}
