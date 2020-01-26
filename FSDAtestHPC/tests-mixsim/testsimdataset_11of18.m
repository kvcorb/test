load tempfileWS
noisevars=struct;
noisevars.number=1;
noiseunits=struct;
noiseunits.number=[100 100];
noiseunits.typeout={'pointmass' 'Chisquare5'};
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noisevars',noisevars,'noiseunits',noiseunits);
spmplot(X,id);
title('4 groups with outliers from $\chi^2_{5}$ and point mass $+1$ noise var','Interpreter','Latex')
close all
save tempfileWS