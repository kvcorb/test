load tempfileWS
n=300;
noisevars=0;
noiseunits=struct;
noiseunits.number=3000;
% Add asymmetric concentrated noise
noiseunits.typeout={'Chisquare40'};
[y, X,id]=simdatasetreg(n, out.Pi, out.Beta, out.S, out.Xdistrib,'noisevars',noisevars,'noiseunits',noiseunits);
[H,AX,BigAx]=yXplot(y,X,'group',id);
title(BigAx,'4 groups with outliers from $\chi^2_{40}$','Interpreter','Latex')
close all
save tempfileWS