close all;
load('multiple_regression.txt');
y=multiple_regression(:,4);
X=multiple_regression(:,1:3);
yXplot(y,X);
[out]=LXS(y,X,'nsamp',10000);
[out]=FSReda(y,X,out.bs);
out1=out;
out1.RES=out.RES.^2;
resfwdplot(out1);
levfwdplot(out1);
resindexplot(out1.RES);
plot(out.S2(:,1),out.S2(:,2)); title('Plot of R^2');
cascade;
close all
save tempfileWS