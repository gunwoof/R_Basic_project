# 레포트 3차, 이름 : 배건우, 학번 : 2017101182

options(scipen=999)
file_dir <- list.files("C:\\Users\\ASUS\\Desktop\\데이터 처리및 실습\\report_data")
path_name <- "C:\\Users\\ASUS\\Desktop\\데이터 처리및 실습\\report_data"

fname <- sprintf("%s\\%s",path_name,file_dir)

# 2021년 6월 평균 기온이 가장 높은 10개의 관측소 번호를 출력하시오. 
all_data <- data.frame() # 각 파일의 모든 온도를 더할 벡터
for(i in 1:length(fname)){
  each_data <- read.table(fname[i])
  colnames(each_data)<-c("DATE","STN","TA","WD","WS","RN_DAY","RN_HR1","HM","PA","PS")
  
  na_idx <- which(each_data == -99.0,arr.ind=TRUE)
  each_data[na_idx] <- NA
  each_data <- as.data.frame(na.omit(each_data))
  
  if(length(all_data)==0){
    all_data <- each_data
  }else{
    all_data <- rbind(all_data, each_data)
  }
  
}
avg_TA <- aggregate(all_data$TA, by=list(all_data$STN), mean)
colnames(avg_TA)<-c("STN","TA")

avg_TA_order <- avg_TA[order(avg_TA$TA),]
for(i in 1:11){
  print(avg_TA_order$STN[i])
}

# 답
#[1] 875
#[1] 10
#[1] 314
#[1] 682
#[1] 867
#[1] 554
#[1] 868
#[1] 869
#[1] 497
#[1] 100
#[1] 350


# 관측소별 일 평균 기온을 계산하고 파일(csv 형식)을 저장하시오.(관측소와 ymd가 둘다 기준임)
yy <- substr(all_data$DATE,1,4)
mm <- substr(all_data$DATE,5,6)
dd <- substr(all_data$DATE,7,8)
yymmdd <- paste0(yy,"-",mm,"-",dd)
yymmdd <- as.Date(yymmdd, format="%Y-%m-%d")
years <- unique(yymmdd)

all_data$YMD <- yymmdd

avg_TA <- aggregate(all_data$TA,by=list(all_data$STN,all_data$YMD),mean) # 관측소, ymd 둘다 기준임
colnames(avg_TA)<-c("STN","YMD","TA")

write.csv(avg_TA,"C:\\Users\\ASUS\\Desktop\\데이터 처리및 실습\\average daily temperature.csv", row.names=FALSE)


# 2번 자료에서 2021년 6월 18일에 대한 전체 관측소에 대한 평균기온을 계산하고 해당일에 평균기온보다 높은 관측소가 몇 개인지 출력하시오.
ymd0618 <- avg_TA[avg_TA$YMD=="2021-06-18",]
avg_0618 <- mean(ymd0618$TA)
stn_0618 <- ymd0618[ymd0618$TA>avg_0618,"STN"]
length(stn_0618)

# 답
# [1] 189

# 2번에서 생성한 자료에 대하여 체감온도(변수명:stmp)를 계산하고 자료에 체감온도 변수를 추가하여 자료를 파일(csv 형식)로 저장하시오(저장 파일명: 이름_학번_stmp.csv)
all_data$dtmp <- 13.12+(0.6215*all_data$TA)-(11.37*(all_data$WS^0.16))+(0.3965*(all_data$WS^0.16)*all_data$TA)


avg_DTMP <- aggregate(all_data$dtmp,by=list(all_data$STN,all_data$YMD),mean) # 관측소, ymd 둘다 기준임
colnames(avg_DTMP)<-c("STN","YMD","DTMP")

z <- merge(avg_TA,avg_DTMP,by=c("STN","YMD"), all=T)
write.csv(z,"C:\\Users\\ASUS\\Desktop\\데이터 처리및 실습\\average daily temperature2.csv", row.names=FALSE)
