load tempfileWS
noiseunits=struct;
noiseunits.number=[1000 1000];
noiseunits.typeout={'uniform' 'componentwise'};
noiseunits.interval=[-2 3];
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noiseunits',noiseunits);
spmplot(X,id);
title('4 groups with outliers componentwise and from uniform in interval [-2 3]','Interpreter','Latex')
close all
save tempfileWS