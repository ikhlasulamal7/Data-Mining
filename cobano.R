
data=FlightDelays
data$delay=factor(data$delay)
data$dayweek=factor(data$dayweek)
f=round(0.7*dim(data)[1],0)
tr=sample(dim(data)[1],f)
trx=data[tr(1,2,3)]
trm=cbind(data[tr,1],data[tr,2],data[tr,4],data[tr,8],data[tr,10])
colnames(trm)=(c('schedtime','carrier','dest','origin','dayweek'))
trn=data[tr,13]
tsm=cbind(data[-tr,1],data[-tr,2],data[-tr,4],data[-tr,8],data[-tr,10])
tsn=data[-tr,13]
hasil=naiveBayes(trn~., data=trm)