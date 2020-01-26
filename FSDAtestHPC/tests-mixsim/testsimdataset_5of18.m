load tempfileWS
n=300;
noisevars=0;
noiseunits=struct;
noiseunits.number=3000;
% Add asymmetric concentrated noise
noiseunits.typeout={'Chisquare40'};
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noisevars',noisevars,'noiseunits',noiseunits);
spmplot(X,id);
title('4 groups with outliers from $\chi^2_{40}$','Interpreter','Latex')
close all
save tempfileWS