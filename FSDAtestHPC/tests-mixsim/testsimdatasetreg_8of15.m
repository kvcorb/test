load tempfileWS
n=300;
noisevars='';
noiseunits=struct;
noiseunits.number=3000;
% Add asymmetric concentrated noise
noiseunits.typeout={'componentwise'};
[y, X,id]=simdatasetreg(n, out.Pi, out.Beta, out.S,out.Xdistrib, 'noisevars',noisevars,'noiseunits',noiseunits);
yXplot(y,X,'group',id);
suplabel('4 groups with component wise outliers','t')
close all
save tempfileWS