n=100;
p=3;
X=randn(n,p);
y=100+randn(n,1);
% Example of the use of function yXplot with all the default options
yXplot(y,X);
close all
save tempfileWS