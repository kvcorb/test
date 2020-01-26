load tempfileWS
n=300;
noisevars=struct;
noisevars.number=[1 2];
noisevars.distribution={'Chisquare3','T20'};
noisevars.interval='minmax';
noiseunits='';
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noisevars',noisevars,'noiseunits',noiseunits);
spmplot(X,id);
title('4 groups in 2 dims with 3 noise variables with ''minimax'' interval','Interpreter','Latex')
close all
save tempfileWS