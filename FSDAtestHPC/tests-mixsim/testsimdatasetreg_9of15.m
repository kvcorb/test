load tempfileWS
n=300;
noisevars=0;
noiseunits=struct;
noiseunits.number=5000*ones(2,1);
noiseunits.typeout={'Chisquare3','T20'};
[y, X,id]=simdatasetreg(n, out.Pi, out.Beta, out.S, out.Xdistrib, 'noisevars',noisevars,'noiseunits',noiseunits);
[H,AX,BigAx]=yXplot(y,X,'group',id);
title(BigAx,'4 groups with outliers from $\chi^2_{3}$ and $T_{20}$','Interpreter','Latex')
close all
save tempfileWS