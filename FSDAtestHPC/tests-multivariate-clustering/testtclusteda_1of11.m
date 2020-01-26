close all
Y=load('geyser2.txt');
% alpha and restriction factor are not specified therefore for alpha
% vector [0.10 0.05 0] is used while for the restriction factor, value c=12
% is used
k=3;
[out]=tclusteda(Y,k);
close all
save tempfileWS