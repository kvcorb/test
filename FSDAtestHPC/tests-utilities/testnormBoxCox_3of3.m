load tempfileWS
load('mussels.mat');
Y=mussels.data;
la=[0.5 0 0.5 0 0];
% Transform all columns of matrix Y according to the values of la
Ytra=normBoxCox(Y,[],la,'Jacobian',false);
Ychk=normBoxCox(Ytra,[],la,'inverse',true);
disp(max(max(abs(Y-Ychk))))
close all
save tempfileWS