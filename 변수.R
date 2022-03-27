ds <- table(c("가을","봄","여름","겨울","가을","봄","여름","가을","봄"))
pie(ds)
ds
class(ds)
ds <- table(c("가을","봄","여름","겨울","가을","봄","여름","가을","봄"))
barplot(ds, col=c('pink','yellow','blue','white'))

man <- data.frame(
  "나이"=c(21,22,23),
  "키"=c(170,175,180),
  "몸무게"=c(75,65,60)
)
all(man==21)
any(man==75)

score <- list(76,84,69,50,95,60,82,84)
which(score>80) # 2 5 7 8 출력

cars[,2]
hist(cars[,2])
