load tempfileWS
load('mussels.mat');
Y=mussels.data;
la=[0.5 0 0.5 0 0];
% Transform all columns of matrix Y according to the values of la using
% the basic power transformation
Y=Powertra(Y,la,'family','basicpower');
close all
save tempfileWS