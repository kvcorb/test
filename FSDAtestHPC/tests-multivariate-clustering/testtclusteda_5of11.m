load tempfileWS
close all
Y=load('M5data.txt');
% alphavec= vector which contains the trimming levels to consider
alphavec=0.10:-0.02:0;
out=tclusteda(Y(:,1:2),3,alphavec,1000,'nsamp',1000,'plots',1);
close all
save tempfileWS