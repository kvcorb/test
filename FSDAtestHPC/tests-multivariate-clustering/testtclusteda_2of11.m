load tempfileWS
Y=load('geyser2.txt');
close all
% alphavec= vector which contains the trimming levels to consider
alphavec=0.10:-0.01:0;
% c = restriction factor to use
c=100;
% k= number of groups
k=3;
[out]=tclusteda(Y,k,alphavec,c);
close all
save tempfileWS