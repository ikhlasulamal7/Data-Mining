#manhattan
dm=matrix(0,4,4)
for (i in 1:4){
for (j in 1:4){
dm[i,j]=sum(abs(x[i,]-x[j,]))
}
}

#euclidean
de=matrix(0,4,4)
for (i in 1:4){
for (j in 1:4){
de[i,j]=sqrt(sum((x[i,]-x[j,])^2))
}
}

#supremum
ds=matrix(0,4,4)
for (i in 1:4){
for (j in 1:4){
ds[i,j]=max(abs(x[i,]-x[j,]))