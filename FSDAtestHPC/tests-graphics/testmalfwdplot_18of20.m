load tempfileWS
n=100;
v=3;
Y=randn(n,v);
% Contaminated data
Ycont=Y;
Ycont(1:5,:)=Ycont(1:5,:)+3;
[out]=MMmulteda(Ycont);
malfwdplot(out,'conflev',0.99)
close all
save tempfileWS