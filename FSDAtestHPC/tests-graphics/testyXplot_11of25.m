load tempfileWS
[out]=LXS(y,X,'nsamp',1000);
[out]=FSReda(y,X,out.bs);
% Example of the use of function yXplot with all the default options
yXplot(out);
close all
save tempfileWS