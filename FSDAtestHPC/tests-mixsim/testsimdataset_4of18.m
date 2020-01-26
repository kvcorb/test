load tempfileWS
n=300;
noisevars=0;
noiseunits=struct;
noiseunits.number=3000;
% Add asymmetric very concentrated noise
noiseunits.typeout={'Chisquare5'};
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noisevars',noisevars,'noiseunits',noiseunits);
spmplot(X,id);
title('4 groups with outliers from $\chi^2_5$','Interpreter','Latex')
close all
save tempfileWS