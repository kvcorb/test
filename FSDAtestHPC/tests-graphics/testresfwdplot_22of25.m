load tempfileWS
XX=load('loyalty.txt');
namey='Sales'
y=XX(:,end);
y=y.^0.4;
X=XX(:,1:end-1);
[out]=LXS(y,X,'nsamp',10000);
[out]=FSReda(y,X,out.bs);
standard=struct;
% xlabels start from 400
standard.xvalues=400:1:(size(out.RES,2)+400-1);
resfwdplot(out,'standard',standard)
close all
save tempfileWS