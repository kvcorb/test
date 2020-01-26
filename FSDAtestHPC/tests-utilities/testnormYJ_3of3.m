load tempfileWS
n=100;p=5;
Y=randn(n,p);
Y(3,1:3)=0;
la=[0.5 0 -0.5 2 0];
% Transform all columns of matrix Y according to the values of la
Ytra=normYJ(Y,[],la,'Jacobian',false);
Ychk=normYJ(Ytra,[],la,'Jacobian',false,'inverse',true);
disp(max(max(abs(Y-Ychk))))
close all
save tempfileWS