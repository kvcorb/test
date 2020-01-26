rng(100)
X = randn(100,5);
% Contaminate 5th and 10th row of matrix X
X(5,:)=5;
X(10,:)=-6;
p=[1 99];
Y = winsor(X,p);
subplot(2,1,1)
boxplot(X)
title('Original data')
subplot(2,1,2)
boxplot(Y)
title('Winsorized data')
close all
save tempfileWS