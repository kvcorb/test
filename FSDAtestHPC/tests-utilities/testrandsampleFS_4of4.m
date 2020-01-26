load tempfileWS
population = -1000:1:-900;
n = numel(population);
wgts = sort(random('gamma',0.3,2,n,1),'descend');
k=10;
y = randsampleFS(n,k,wgts);
sample  = population(y);
plot(wgts,'.r')
hold on;
text(y,wgts(y),'X');
title('Weight distribution with the extracted numbers superimposed')
close all
save tempfileWS