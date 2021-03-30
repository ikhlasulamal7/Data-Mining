#hclust
de=dist(Data1,"euclidean")
k1=hclust(de,"single")
plot(k1)

l1=cophenet(k1)
c1=cor(de,l1)

csum=data.frame("Metode_Distance"=c("euclidean","euclidean","euclidean","manhattan","manhatta
n","manhattan"),"Metode_Hierarki_Clustering"=c("single","centroid","average","single","centroid","ave
rage"),"Nilai_Cophenetic_Coefficient"= c(c1,c2,c3,c4,c5,c6))
