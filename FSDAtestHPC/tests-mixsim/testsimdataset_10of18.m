load tempfileWS
n=300;
noisevars=0;
noiseunits=struct;
noiseunits.number=5000*ones(2,1);
noiseunits.typeout={'Chisquare3','T20'};
noiseunits.alpha=0.2;
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noisevars',noisevars,'noiseunits',noiseunits);
spmplot(X,id);
title('4 groups with outliers from $\chi^2_{3}$ and $T_{20}$ and $\alpha=0.2$','Interpreter','Latex')
close all
save tempfileWS