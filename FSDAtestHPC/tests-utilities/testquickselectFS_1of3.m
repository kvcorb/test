n=200;
Y=randn(n,1);
k=10;
[out]=quickselectFS(Y,k);
% Check the result
sorY=sort(Y);
disp([out,sorY(k)])
close all
save tempfileWS