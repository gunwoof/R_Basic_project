# 3번 : while문으로 구구단 8단 출력
i <- 1
j <- 1
while(i != 9) {
  if(j == 9){
    j <- 1
  }
  while(j != 9) {
    cat(i,"*",j,"=",i*j,"\n")
    j <- j+1
  }
  i <- i+1
}

# 4번 : 1~100의 정수를 출력하되 3의 배수는 "*"을 출력
number <- c()
for(i in 1:100) {
  if(i%%3 != 0) {
    number[i] <- i
  }else{
    number[i] <- "*"
  }
}
print(number)

# 5번 : 2~1000 사이의 소수를 출력 / 자신의 제곱근 아래로 나누어 떨어 지는 것이 없으면 소수이다
for(i in 4:10) {
  for(j in 2:sqrt(i)) {
    if(i%%j != 0) {
      print(i)
    }
  }
}

# 6번 : 0항~40항 피보나치 수열 출력
fibo <- function(n){
  if(n == 1) {
    return(0)
  }
  if(n == 2) {
    return(1)
  }
  return(fibo(n-1)+fibo(n-2))
}

for(i in 1:40) {
  print(fibo(i))
}


  