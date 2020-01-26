load tempfileWS
load('swiss_banknotes');
Y=swiss_banknotes.data;
[n,v]=size(Y);
alphavec=0.15:-0.01:0;
% alphavec=0.12:-0.005:0;
% c = restriction factor to use
c=100;
% k= number of groups
k=2;
% restriction on the determinants is imposed
restrtype='deter';
% Specify lower and upper limits for the monitoring plot
plots=struct;
% ylimits for monitoring of ARI index
ylimARI=[0.95 1];
% ylimits for change in centroids
ylimCENT=[0 0.02];
% ylimits for change in cov matrices
ylimCOV=[0 0.01];
ylimy=[ylimARI;ylimCENT;ylimCOV];
plots.ylimy=ylimy;
[outDet]=tclusteda(Y,k,alphavec,c,'restrtype',restrtype,'plots',plots,'nsamp',10000);
close all
save tempfileWS