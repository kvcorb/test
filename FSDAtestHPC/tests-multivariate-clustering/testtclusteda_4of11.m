load tempfileWS
Y=load('geyser2.txt');
close all
% alphavec= vector which contains the trimming levels to consider
alphavec=0.30:-0.10:0;
% c = restriction factor to use
c=100;
% k= number of groups
k=3;
% Make sure that group containing unit 10 is in a group which is labelled
% group 1 and group containing unit 12 is in group which is labelled group 2
UnitsSameGroup=[10 12];
% Mixture model is used
mixt=2;
[out]=tclusteda(Y,k,alphavec,1000,'mixt',2,'UnitsSameGroup',UnitsSameGroup);
close all
save tempfileWS