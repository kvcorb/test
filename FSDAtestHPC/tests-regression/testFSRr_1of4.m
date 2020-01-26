n=200; p=1;
X = rand(n,p);
y = X + 0.01*randn(n,1);
% contaminated data points
ycont = y;
ycont(1:8) = ycont(1:8)+0.05;
[out1 , xnew1 , ypred1, yci1] = ...
FSRr(ycont,X,'plotsPI',1,'plots',1);
disp(['Outliers without R2 adjustment = ' num2str(out1.outliers)]);
disp(['Outliers with    R2 adjustment = ' num2str(out1.outliersr)]);
close all
save tempfileWS