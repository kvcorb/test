load tempfileWS
n=300;
noisevars='';
noiseunits=struct;
noiseunits.number=3000;
% Add asymmetric concentrated noise
noiseunits.typeout={'componentwise'};
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noisevars',noisevars,'noiseunits',noiseunits);
spmplot(X,id);
title('4 groups with component wise outliers','Interpreter','Latex')
close all
save tempfileWS