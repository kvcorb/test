load tempfileWS
av=abs(randn(3,6));
% Maximum ratio among determinants must be equal to 1.6.
restr=1.6;
% Group sizes
niini=[30;40;20;10;50;100];
% Apply the restriction using a tolerance of 1e-12 and use MATLAB
% function repmat for the computations
tol=1e-12;
repm=1;
a=restrdeter(av,niini,restr,tol,repm);
close all
save tempfileWS