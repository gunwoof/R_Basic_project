a <- 10
b <- 20


c=c(1,3,4,7,8,47)
d=a*c
print(d[1:5])

v4 <- LETTERS[1:5]
print(v4)


print(rep(c(1,5,9),times=2,each=3))
d <- c(1,5,9)
names(d) <- c("aA","bB","cC")
print(d)

c <- c()
c[3] <- 5

print(c)

x <- c(1,3,5)
x <- x/2
print(x)
x <- c(1,3,5)
y <- c(2,4,6)
print(x+y)

x <- c(5,1,3)
x <- sort(x)
print(x)
x <- sort(x,decreasing= TRUE)
print(x)

d <- c(name=6,s=5,e=9)
print(d$name)

x <- c(5,1,3)
a<- c(2,4,3)
s <- x+a
print(s)

x <- c(5,1,3)
y <- c(1,2,3)
z <- c(x,y)
print(z) # 5 1 3 1 2 3 출력

x <- list(name="gunwoof",age=26,number=1)
print(x)

x <- list(1,3,5)
x <- x*2
print(x)

t <- list()
t[[1]] <- 1
t <- append(t, 2)
print(t)

x <- list(1,3,5)
x <- x[-1] # 1번 값이 지워지고 뒤의 값들이 앞으로 당겨짐
print(sum(x)) # 3, 5 출력

x <- list(5,1,3)
y <- list(1,2,3)
z <- c(x,y)
print(z)

v1 <- 10:20
v2 <- list(8,9,v1)
print(v2)

a <- list(1,2,3,4,5,6,7,8,9)
print(a[1:8]) # 1,2,3,4,5,6,7,8 출력
print(a[c(1,3,5)]) # 1,3,5 출력 
print(a[seq(1,5,2)]) # 1, 3, 5 출력

a <- list(1,5,9)
names(a) <- list("aa","bb","cc")
print(a)
# aa bb cc
#  1  5  9 출력

names(a)[[2]] <- "dd"  #2번째 인덱스 이름을 바꿈

print(a)
print(a$aa) # 1 출력

m1 <- c("w","a","q")
barplot(m1)
?View

x <- 5
if(x > 0) {
  print("Positive number")
}

x <- -5
if(x > 0){
  print("Non-negative number")
} else {
  print("Negative number")
}

m1 <- matrix(1:20, 4, 5, byrow=T)
m1 <- rbind(m1,c(21,22,23,24,25))
m1

m2 <- matrix(1:20, 4, 5, byrow=T)
m2 <- cbind(m2,c(21,22,23,24))
rowSums(m2)
m2
m1 <- matrix(1:20, 4, 5, byrow=T)
colSums(m1)
rowSums(m1)

m2 <- matrix(1:20, 4, 5, byrow=T)
rownames(m2) <- c("A", "b", "c", "D")
print(rownames(m2))

x <- matrix(1:20,4,5,byrow=T)
x <- x/2
x

x <- matrix(1:4,2,2,byrow=T)
y <- matrix(1:4,2,2,byrow=T)
str(x)
table(x[,1])

m1 <- matrix(1:20, 4, 5, byrow=T)
 
m1
summary(m1[1,])

Data_Frame <- data.frame (
  c("Strength", "Stamina", "Other"), 
  c(100, 150, 120),
  c(60, 30, 45) )
Data_Frame
class(Data_Frame$Training)

Training <- c("Strength", "Stamina", "Other")
Pulse <- c(100, 150, 120)
Duration <- c(60, 30, 45) 
Dat_Frame <- data.frame(Training,Pulse, Duration)
Dat_Frame

man <- data.frame(
  "나이"=c(21,22,23),
  "키"=c(170,175,180),
  "몸무게"=c(75,65,60)
)
man <- man/2
print(man)

man <- data.frame(
  "나이"=c(21,22,23),
  "키"=c(170,175,180),
  "몸무게"=c(75,65,60),
)
woman <- data.frame(
  "나이"=c(21,22,23),
  "키"=c(170,175,180),
  "몸무게"=c(75,65,60)
)
print(man+woman)
print(man*woman)
print(man%*%woman)


man <- data.frame(
  "나이"=c(21,22,23)
)
man <- rbind(man,24)
man

man <- data.frame(
  "나이"=c(21,22,23)
)
man <- cbind(man,"키"=c(170,175,180))
man

man <- data.frame(
  "나이"=c(21,22,23),
  "키"=c(170,175,180),
  "몸무게"=c(75,65,60)
)
man[2,"나이"] <- c(10)
man

man <- data.frame(
  "나이"=c(21,22,23),
  "키"=c(170,175,180),
  "몸무게"=c(75,65,60)
)
colnames(man) <- c("A", "b", "c")
print(colnames(man)[1])
str(man)
colSums(man) # 34 38 42 46 50 출력
rowSums(man)

colMeans(man) # 8.5  9.5 10.5 11.5 12.5 출력
rowMeans(man)

d1 <- data.frame("char"=c("a", "b", "c", "o", "m", "p")) 
d1
print("a" %in% d1) # TRUE 출력

mat <- matrix(c("a", "b", "c", "o", "m", "p"), nrow = 3, ncol =2) 
print("a" %in% mat)

a <- factor(c("1","2"))
print(a)

a <- factor(c("a","b","d","a","c"))
b <- factor(c("q"))
c <- c(a+b)
print(C)
levels(a) 
a <- as.integer(a)
print(a)
a <- a[-1]
a

a <- factor(c("a","b","d","a","c"))
print(a[1:8]) # 1,2,3,4,5,6,7,8 출력
print(a[c(1,3,5)]) # 1,3,5 출력 
print(a[seq(1,5,2)])

serwd <- ("C:\\Users\\ASUS\\Desktop\\데이터 처리및 실습")
whether <- read.csv("weather_input.csv", header=F)
head(whether)

serwd <- ("C:\\Users\\ASUS\\Desktop\\데이터 처리및 실습")
my_iris <- subset(iris, Species == "setosa")

# read.csv(데이터프레임변수, "경로", row.names=FALSE)
write.csv(my_iris,"C:\\Users\\ASUS\\Desktop\\데이터 처리및 실습\\iris_setosa.csv", row.names=FALSE)

for(i in 1:20) {
  if(i%%2 !=0) {
    print(i)
  }
}
View(iris)
norow <- nrow(iris)
mylabel <- c()
for (i in 1:norow) {
  if(iris$Petal.Length[i]<=1.6){
    mylabel[i] <-"L"
  }else if(iris$Petal.Length[i]>=5.1) {
    mylabel[i] <-"H"
  }else{
    mylabel[i] <-"M"
  }
}
print(mylabel)

for(i in 1:9) {
  for(j in 1:9) {
    cat(i,"*", j, "=", (i*j),"\n")
  }
}

a <-10
b <-20
print(a,b)

a<-readline(prompt="숫자를 입력하세요")
50

apply(iris[1:4,], 1, mean)
iris

m1 <- matrix(1:20, 4, 5, byrow=T)
apply(m1, 2, mean)

setwd("C:\\Users\\ASUS\\Desktop\\데이터 처리및 실습")
source("fun.R")
fun

which(iris[,1:4]>5.0, arr.ind=TRUE)

score <- factor(c(76,84,69,50,95,60,82,84))
which(score>"84")
class(qw)

which.max(score)
which.min(score)

m1 <- matrix(1:20, 4, 5, byrow=T)
which(m1>10, arr.ind=TRUE)

man <- data.frame(
  "나이"=c(21,22,23),
  "키"=c(170,175,180),
  "몸무게"=c(75,65,60)
)
which(man[,1:3]>1)
which(man[,1:3]>1, arr.ind=TRUE)

for(i in c("a","b", "c")){
  print(i)
}

m1 <- function(){
  return(matrix(1:4,2,2))
}
m1()


