install.packages('e1071')
install.packages('caTools')
install.packages('caret')
install.packages('rpart')
install.packages('rpart.plot')
library('e1071')
library('caTools')
library('caret')
library('rpart')
library('rpart.plot')
setwd("~/Tugas/Semester 7/Data Mining") #Merubah File Directory
data=read.csv('FlightDelays.csv')
data$delay=factor(data$delay)
data$dayweek=factor(data$dayweek)
jtr=round(0.7*dim(data)[1],0) #Hitung Jumlah data testing
tr=sample(dim(data)[1],jtr) #Generate data random 
trx=cbind(data[tr,1:2],data[tr,4],data[tr,8],data[tr,10]) #Variabel Data Training
colnames(trx)=(c('schedtime','carrier','dest','origin','dayweek'))
try=data[tr,13] #kategori Data Training
tsx=cbind(data[-tr,1:2],data[-tr,4],data[-tr,8],data[-tr,10]) #Variabel Data Testing
colnames(tsx)=(c('schedtime','carrier','dest','origin','dayweek'))
tsy=data[-tr,13] #kategori Asal Data Testing
hasilnv=naiveBayes(try~., data=trx) #penghitungan naivebayes data testing tsx, dengan training dari data trx
ypnv=predict(hasilnv, newdata=tsx) #prediksi kategori tsx dengan hasil naiveBayes
hasildt=rpart(try~.,data=trx,method='class',cp=-1)
ypdt=predict(hasildt, newdata=tsx,type='class')
cmnv=confusionMatrix(ypnv,tsy) #Generate confusion matrix
cmdt=confusionMatrix(ypdt,tsy)

