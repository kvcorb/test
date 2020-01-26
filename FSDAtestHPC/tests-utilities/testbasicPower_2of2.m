load tempfileWS
n=100;p=5;
Y=abs(randn(n,p));
la=[0.5 0 -0.5 2 0];
% Transform all columns of matrix Y according to the values of la
Ytra=basicPower(Y,[],la);
Ychk=basicPower(Ytra,[],la,'inverse',true);
disp(max(max(abs(Y-Ychk))))
close all
save tempfileWS