ds <- table(c("����","��","����","�ܿ�","����","��","����","����","��"))
pie(ds)
ds
class(ds)
ds <- table(c("����","��","����","�ܿ�","����","��","����","����","��"))
barplot(ds, col=c('pink','yellow','blue','white'))

man <- data.frame(
  "����"=c(21,22,23),
  "Ű"=c(170,175,180),
  "������"=c(75,65,60)
)
all(man==21)
any(man==75)

score <- list(76,84,69,50,95,60,82,84)
which(score>80) # 2 5 7 8 ���

cars[,2]
hist(cars[,2])
