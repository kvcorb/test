load tempfileWS
Y=load('geyser2.txt');
close all
% alphavec= vector which contains the trimming levels to consider
% in this case 31 values of alpha are considered
alphavec=0.30:-0.01:0;
% c = restriction factor to use
c=100;
% k= number of groups
k=3;
% The monitoring plot of allocation will shows just these four values of
% alpha
plots=struct;
plots.alphasel=[0.2 0.10 0.05 0.01];
[out]=tclusteda(Y,k,alphavec,c,'plots',plots);
close all
save tempfileWS