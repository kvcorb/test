load tempfileWS
close all
n=100;
v=3;
m0=3;
Y=randn(n,v);
% Contaminated data
Ycont=Y;
Ycont(1:10,:)=5;
[fre]=unibiv(Ycont);
%create an initial subset with the 3 observations with the lowest
%Mahalanobis Distance
fre=sortrows(fre,4);
bs=fre(1:m0,1);
[out]=FSMeda(Ycont,bs,'plots',1);
% mmdplot(out);
figure
plo=struct;
plo.labeladd='1';
plo.clr = 'b';
spmplot(out,'datatooltip',1,'plo',plo);
close all
save tempfileWS