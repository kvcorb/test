cc=3:6;
kk=4:0.5:5;
ABD=zeros(length(cc)*length(kk),4);
ij=1;
for c=cc
for k=kk
[A,B,d]=HYPck(c,k);
eff=B^2/A;
ABD(ij,:)=[A,B,d,eff];
ij=ij+1;
end
end
close all
save tempfileWS