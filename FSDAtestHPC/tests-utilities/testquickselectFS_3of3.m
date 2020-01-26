load tempfileWS
n=10;
Y=randn(n,1);
k=3;
% kiniindex is supplied 
[out,Ysor]=quickselectFS(Y,k);
% Check the result
disp([Y, Ysor])
close all
save tempfileWS