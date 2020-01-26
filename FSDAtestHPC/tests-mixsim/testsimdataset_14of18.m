load tempfileWS
n=300;
noisevars=struct;
noisevars.number=[2 3];
noisevars.distribution={'Chisquare3','T20'};
noiseunits='';
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noisevars',noisevars,'noiseunits',noiseunits);
spmplot(X,id,[],'box');
title('4 groups in 2 dims with 5 noise variables. First two from $\chi^2_{3}$ and last three from $T_{20}$','Interpreter','Latex')
close all
save tempfileWS