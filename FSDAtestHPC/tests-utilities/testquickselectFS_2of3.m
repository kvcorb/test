load tempfileWS
n=200;
Y=randn(n,1);
k=10;
% kiniindex is supplied 
[out]=quickselectFS(Y,k,20);
% Check the result
sorY=sort(Y);
disp([out,sorY(k)])
close all
save tempfileWS