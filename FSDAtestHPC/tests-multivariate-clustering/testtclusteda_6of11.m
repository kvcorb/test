load tempfileWS
close all
Y=load('structurednoise.txt');
alphavec=0.20:-0.01:0;
out=tclusteda(Y,2,alphavec,100,'plots',1);
close all
save tempfileWS