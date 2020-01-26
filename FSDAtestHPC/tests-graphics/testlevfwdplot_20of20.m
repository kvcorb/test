load tempfileWS
XX=load('loyalty.txt');
namey='Sales'
y=XX(:,end);
y=y.^0.4;
X=XX(:,1:end-1);
[out]=LXS(y,X,'nsamp',10000);
[out]=FSReda(y,X,out.bs);
plotopt=levfwdplot(out,'msg',2)
% In order to reuse the options which have been stored inside plotopt
% use the following sintax
% levfwdplot(out,plotopt{:})
close all
save tempfileWS