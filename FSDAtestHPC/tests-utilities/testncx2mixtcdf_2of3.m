load tempfileWS
df=[5;4];
lb=[2;3];
nc=[1;6];
xx=0:1:100;
cdfnc=zeros(length(xx),1);
ij=1;
for x=xx
[out]=ncx2mixtcdf(x,df,lb,nc);
cdfnc(ij)=out;
ij=ij+1;
end
plot(xx',cdfnc)
xlabel('x')
ylabel('cdf of the mixture of non central X2')
close all
save tempfileWS