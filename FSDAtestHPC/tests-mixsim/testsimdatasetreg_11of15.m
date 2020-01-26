load tempfileWS
n=300;
noisevars=struct;
noisevars.number=1;
noiseunits=struct;
noiseunits.number=[100 100];
noiseunits.typeout={'pointmass' 'Chisquare5'};
[y, X,id]=simdatasetreg(n, out.Pi, out.Beta, out.S, out.Xdistrib, 'noisevars',noisevars,'noiseunits',noiseunits);
[H,AX,BigAx]=yXplot(y,X,'group',id);
title(BigAx,'4 groups with outliers from $\chi^2_{5}$ and point mass $+1$ noise var','Interpreter','Latex')
close all
save tempfileWS