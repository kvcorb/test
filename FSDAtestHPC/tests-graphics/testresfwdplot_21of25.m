load tempfileWS
XX=load('loyalty.txt');
namey='Sales'
y=XX(:,end);
y=y.^0.4;
X=XX(:,1:end-1);
[out]=LXS(y,X,'nsamp',10000);
[out]=FSReda(y,X,out.bs);
% msg is 1 therefore used options are also shown on the screen.
plotopt=resfwdplot(out,'msg',1)
% In order to reuse the options which have been stored inside plotopt
% use the following sintax
% resfwdplot(out,plotopt{:})
close all
save tempfileWS