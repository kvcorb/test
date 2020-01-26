load tempfileWS
n=1000;
x=10*sort(randn(n,1))+10;
% The variance of y depends on x.
y=1+1*x+ 10*x.*randn(n,1);
% Upper limits of integration.
z=rand(n,1)*100-50;
a=ctsub(x,y,z);
subplot(2,1,1)
plot(x,y)
title('Original data')
subplot(2,1,2)
plot(x,a)
title('Transformed data after the variance stabilizing transformation')
close all
save tempfileWS