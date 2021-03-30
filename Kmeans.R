x=rbind(matrix(rnorm(40,sd=0.3),ncol=2),
        matrix(rnorm(40,mean=1,sd=0.3),ncol=2),
        matrix(rnorm(40,mean=3,sd=0.3),ncol=2))
c=kmeans(x,3)
plot(x,col=c$cluster)
points(c$centers,col=1:2,pch=1,cex=2)
#pch= jenis karakter, cex ukuran