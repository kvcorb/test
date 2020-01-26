load tempfileWS
close all
Y=load('mixture100.txt');
% Traditional tclust
alphavec=0.20:-0.01:0;
% just show the allocation plot
plots=struct;
plots.name = {'gscatter'};
out=tclusteda(Y,2,alphavec,100,'plots',plots);
close all
save tempfileWS