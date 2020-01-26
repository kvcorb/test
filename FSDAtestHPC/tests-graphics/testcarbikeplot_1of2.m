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
nsamp=1000;
% Computation of information criterion
out=tclustIC(Y,'cleanpool',false,'plots',0,'nsamp',nsamp);
% Computation of the best solutions
% Plot first 3 best solutions using as Information criterion CLACLA
disp('Best 9 solutions using CLACLA')
ThreshRandIndex=0.8;
NumberOfBestSolutions=9;
[outCLACLA]=tclustICsol(out,'whichIC','CLACLA','plots',0,'NumberOfBestSolutions',NumberOfBestSolutions,'ThreshRandIndex',ThreshRandIndex);
% Car-bike plot to show what are the most relevant solutions
carbikeplot(outCLACLA)
close all
save tempfileWS