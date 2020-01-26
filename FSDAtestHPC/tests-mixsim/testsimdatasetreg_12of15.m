load tempfileWS
n=300;
noiseunits=struct;
noiseunits.number=1000;
noiseunits.typeout={'uniform'};
% Generate outliers in the interval [-1 1] for the first variable and
% interval [1 2] for the second variable
noiseunits.interval=[-1 1;
1 2];
% Finally add a noise variable
noisevars=struct;
noisevars.number=1;
[y, X,id]=simdatasetreg(n, out.Pi, out.Beta, out.S, out.Xdistrib, 'noisevars',noisevars,'noiseunits',noiseunits);
[H,AX,BigAx]=yXplot(y,X,'group',id);
title(BigAx,'4 groups with outliers from uniform using a personalized interval $+1$ noise var','Interpreter','Latex')
close all
save tempfileWS