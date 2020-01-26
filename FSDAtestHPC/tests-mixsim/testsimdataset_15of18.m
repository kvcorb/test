load tempfileWS
n=300;
noisevars=struct;
noisevars.number=[1 2];
noisevars.distribution={'Chisquare3','T2'};
noiseunits='';
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noisevars',noisevars,'noiseunits',noiseunits);
spmplot(X,id);
title('4 groups in 2 dims with 3 noise variables. First from $\chi^2_{3}$ and last two from $T_{2}$','Interpreter','Latex')
close all
save tempfileWS