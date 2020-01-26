load tempfileWS
n=300;
noisevars=0;
noiseunits=struct;
noiseunits.number=3000;
% Add normal noise
noiseunits.typeout={'normal'};
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noisevars',noisevars,'noiseunits',noiseunits);
spmplot(X,id);
title('4 groups with outliers from normal distribution','Interpreter','Latex')
close all
save tempfileWS