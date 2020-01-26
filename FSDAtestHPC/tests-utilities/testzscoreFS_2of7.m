load tempfileWS
loc='mean'
X=randn(10,2);
Z=zscoreFS(X,loc,'mad');
close all
save tempfileWS