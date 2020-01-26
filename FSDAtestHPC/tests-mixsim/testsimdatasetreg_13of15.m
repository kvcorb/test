load tempfileWS
noiseunits=struct;
noiseunits.number=[1000 1000];
noiseunits.typeout={'uniform' 'componentwise'};
noiseunits.interval=[-2; 3];
[y, X,id]=simdatasetreg(n, out.Pi, out.Beta, out.S, out.Xdistrib, 'noisevars',noisevars,'noiseunits',noiseunits);
yXplot(y,X,'group',id);
suplabel('4 groups with outliers componentwise and from uniform in the interval [-2 3]','t')
close all
save tempfileWS