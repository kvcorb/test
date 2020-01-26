load tempfileWS
n=100;p=5;
Y=randn(n,p);
Y(3,1:3)=0;
la=[0.5 0 -0.5 2 0];
family='YeoJohnson';
% Transform all columns of matrix Y according to the values of la
Ytra=Powertra(Y,la,'Jacobian',false,'family',family);
Ychk=Powertra(Ytra,la,'Jacobian',false,'inverse',true,'family',family);
disp(max(max(abs(Y-Ychk))))
close all
save tempfileWS