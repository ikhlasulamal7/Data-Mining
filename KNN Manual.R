#input Data
x=rbind(c(1,3),c(1,4),c(1,5),c(4,7),c(4,8),c(4,9))
y=c(1,1,1,2,2,2)
t(y)

xt=rbind(c(1.5,3),c(3.5,7))

#c1
m=matrix(xt[1,],2,6)
r1=t(m)

#atau
install.packages(Jmisc)
library(Jmisc)
r1=repRow(xt[1,],6)
r2=repRow(xt[2,],6)

#knn
h1=rowSums((r1-x)^2)
h2=rowSums((r2-x)^2)

library(class)
pr=kkn(x,xt,y,k=2)


#Latihan Data Iris
d=iris
ran=sample(150,0.9*150)
xtrain=d[ran,1:4]
xtes=d[-ran,1:4]

#cek kesesuain
dim(xtrain)
dim(xtes)

ytrain=d[ran,5]
ytes=d[-ran,5]

pr=knn(xtrain,xtes,ytrain,k=5)

data.frame(pr,ytes)

#menghitung Akurasi
which(pr==ytes)
which(pr!=ytes)
length=(which(pr==ytes))/length(pr)


