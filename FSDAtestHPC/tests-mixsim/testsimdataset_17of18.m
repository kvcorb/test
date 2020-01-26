load tempfileWS
n=300;
noisevars=struct;
noisevars.number=[1 2];
noisevars.distribution={'Chisquare3','T20'};
noiseunits='';
% In this example we supply min and max for each noise variable
v1=sum(noisevars.number);
noisevars.interval=[3*ones(1,v1); 10*ones(1,v1)];
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noisevars',noisevars,'noiseunits',noiseunits);
spmplot(X,id);
title('4 groups in 2 dims with 3 noise variables with personalized interval','Interpreter','Latex')
close all
save tempfileWS