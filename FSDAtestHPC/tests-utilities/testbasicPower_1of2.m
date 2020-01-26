load('mussels.mat');
Y=mussels.data;
la=[0.5 0 0.5 0 0];
% Transform all columns of matrix Y according to the values of la using
% basic power transformation
Y1=basicPower(Y,[],la);
close all
save tempfileWS