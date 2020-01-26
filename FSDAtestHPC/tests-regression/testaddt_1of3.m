XX=load('wool.txt');
y=log(XX(:,end));
X=XX(:,1:end-2);
w=XX(:,end-1);
[out]=addt(y,X,w);
% out.Tadd (equal to -8.9707) is exactly equal to stats.tstat.t(4)
% obtained as
whichstats = {'tstat','mse'};
stats = regstats(y,XX(:,1:end-1),'linear',whichstats);
% Similarly out.S2add (equal to 0.0345) is exactly equal to stats.mse (estimate of
% \sigma^2 for augmented model)
close all
save tempfileWS