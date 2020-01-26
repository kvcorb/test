load tempfileWS
n=300;
noisevars=0;
noiseunits=struct;
noiseunits.number=3000;
% Add asymmetric very concentrated noise
noiseunits.typeout={'Chisquare5'};
[y,X,id]=simdatasetreg(n, out.Pi, out.Beta, out.S, out.Xdistrib,'noisevars',noisevars,'noiseunits',noiseunits);
[H,AX,BigAx]=yXplot(y,X,'group',id);
title(BigAx,'2 groups with outliers from $\chi^2_5$','Interpreter','Latex')
close all
save tempfileWS