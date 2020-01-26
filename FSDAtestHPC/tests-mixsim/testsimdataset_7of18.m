load tempfileWS
n=300;
noisevars=0;
noiseunits=struct;
noiseunits.number=3000;
% Add outliers from T5
noiseunits.typeout={'T5'};
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noisevars',noisevars,'noiseunits',noiseunits);
spmplot(X,id);
title('4 groups with outliers from Student T with 5 degrees if freedom','Interpreter','Latex')
close all
save tempfileWS