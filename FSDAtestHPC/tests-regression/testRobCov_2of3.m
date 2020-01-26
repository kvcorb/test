load tempfileWS
rhofunc='optimal';
bdp=0.5;
out=RobCov(X,outS.residuals,outS.scale,'rhofunc',rhofunc,'bdp',0.5);
covrobS=out.covrob;
covrobS1=out.covrob1;
covrobS2=out.covrob2;
covrobS3=out.covrob3;
covrobS4=out.covrob4;
% Compute robust S t-statistics
tstatS=outS.beta./sqrt(diag(covrobS));
tstatS1=outS.beta./sqrt(diag(covrobS1));
tstatS2=outS.beta./sqrt(diag(covrobS2));
tstatS3=outS.beta./sqrt(diag(covrobS3));
tstatS4=outS.beta./sqrt(diag(covrobS4));
eff=0.95;
outMM=MMregcore(ycont,X,outS.beta,outS.scale);
out=RobCov(X,outMM.residuals,outS.scale,'rhofunc',rhofunc,'eff',eff);
covrobMM=out.covrob;
covrobMM1=out.covrob1;
covrobMM2=out.covrob2;
covrobMM3=out.covrob3;
covrobMM4=out.covrob4;
tstatMM=outMM.beta./sqrt(diag(covrobMM));
tstatMM1=outMM.beta./sqrt(diag(covrobMM1));
tstatMM2=outMM.beta./sqrt(diag(covrobMM2));
tstatMM3=outMM.beta./sqrt(diag(covrobMM3));
tstatMM4=outMM.beta./sqrt(diag(covrobMM4));
disp('tstat from S')
disp([tstatS tstatS1 tstatS2 tstatS3 tstatS4])
disp('--------')
disp('tstat from MM')
disp([tstatMM tstatMM1 tstatMM2 tstatMM3 tstatMM4])
qhat=out.q;
disp('tstat from MM after correction for sigma')
disp([tstatMM/qhat tstatMM1/qhat tstatMM2/qhat tstatMM3/qhat tstatMM4/qhat])
close all
save tempfileWS