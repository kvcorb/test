load tempfileWS
close all
Y=load('structurednoise.txt');
alphavec=0.20:-0.01:0;
% just show the monitoring plot
plots=struct;
plots.name = {'monitor'};
out=tclusteda(Y,2,alphavec,100,'plots',plots);
close all
save tempfileWS