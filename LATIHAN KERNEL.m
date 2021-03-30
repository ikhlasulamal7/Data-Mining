k=svkernel('poly',2,x,x)
for i=1:4
for j=1:4
H(i,j)=y(i)*y(j)*k(i,j);
end
end
%1/2 [a1 a2 a3 a4]*H*[a1 a2 a3 4]' - [a1+a2+a3+a4]
%f=[-1 -1 -1 -1]
a=quadprog(H,f,[],[],y',0,[0 0 0 0])
w1=(a.*y)
w=w1'*k'
%fungsi=wx+b=a*y*k(xts.xtr)
%setiap ada data baru untuk testing kernel harus dihitung kembali
yt=(w1'k(xts,xtr))
yt=w1'*k'
%klo ada 3 classifier, sla, one against all, slu one against 1 voting

sign(yt)