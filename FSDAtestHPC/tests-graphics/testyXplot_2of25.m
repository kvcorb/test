load tempfileWS
n=100;
p=3;
X=randn(n,p);
y=100+randn(n,1);
sel=51:100;
y(sel)=y(sel)+2;
group=ones(n,1);
group(sel)=2;
yXplot(y,X,group);
close all
save tempfileWS