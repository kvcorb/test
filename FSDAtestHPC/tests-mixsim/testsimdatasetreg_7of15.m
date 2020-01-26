load tempfileWS
n=300;
noisevars=0;
noiseunits=struct;
noiseunits.number=3000;
% Add outliers from T5
noiseunits.typeout={'T5'};
[y, X,id]=simdatasetreg(n, out.Pi, out.Beta, out.S,out.Xdistrib, 'noisevars',noisevars,'noiseunits',noiseunits);
[H,AX,BigAx]=yXplot(y,X,'group',id);
suplabel('4 groups with outliers from Student T with 5 degrees if freedom','t')
close all
save tempfileWS