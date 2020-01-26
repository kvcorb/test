load tempfileWS
n=100; p=5;
seluni=[10 30];
Y =randn(n,p);
Y(seluni,:)=Y(seluni,:)+2;
% add labels for units inside vector seluni
spmplot(Y,'selunit',seluni)
close all
save tempfileWS