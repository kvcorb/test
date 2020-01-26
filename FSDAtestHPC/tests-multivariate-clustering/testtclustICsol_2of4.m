load tempfileWS
restrfact=5;
rng('default') % Reinitialize the random number generator to its startup configuration
rng(20000);
ktrue=3;
% n = number of observations
n=150;
% v= number of dimensions
v=2;
% Imposed average overlap
BarOmega=0.04;
out=MixSim(ktrue,v,'BarOmega',BarOmega, 'restrfactor',restrfact);
% data generation given centroids and cov matrices
[Y,id]=simdataset(n, out.Pi, out.Mu, out.S);
% Computation of information criterion
out=tclustIC(Y,'cleanpool',false,'plots',0,'nsamp',200);
% Plot first 3 best solutions using as Information criterion MIXMIX
disp('Best 3 solutions using MIXMIX')
[outMIXMIX]=tclustICsol(out,'whichIC','MIXMIX','plots',1,'NumberOfBestSolutions',3);
disp(outMIXMIX.MIXMIXbs)
disp('Best 3 solutions using CLACLA')
[outCLACLA]=tclustICsol(out,'whichIC','CLACLA','plots',1,'NumberOfBestSolutions',3);
disp(outCLACLA.CLACLAbs)
close all
save tempfileWS