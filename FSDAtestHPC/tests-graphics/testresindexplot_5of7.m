load tempfileWS
[out]=LXS(y,X,'nsamp',1000);
resindexplot(out.residuals,'numlab',{3});
close all
save tempfileWS