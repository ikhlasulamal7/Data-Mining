#correlation
cor(cars$speed,cars$dist)

#scatter smooth
scatter.smooth(x=cars$speed,y=cars$dist)

#model regresi
mreg=lm(speed~dist,data=cars)
summary(modelreg)

#boxplot
boxplot(cars)

#bikin data sample
tr=sample(row.names(cars),dim(cars)[1]*0.6)
trx=cars[tr,]
ts=setdiff(row.names(cars),tr)
tsx=cars[ts,]

#predict
pred=predict(mreg,tsx)

hasil=data.frame(aktual=tsx$speed,prediksi=pred,residual=tsx$speed-pred)

plot(tsx$speed,type="o",col="blue",pch="o")
points(pred,col='red',pch="*")
lines(pred,col='red',lty=2)