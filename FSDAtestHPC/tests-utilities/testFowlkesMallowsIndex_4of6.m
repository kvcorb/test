load tempfileWS
load fisheriris
% first partition c1 is the true partition
c1=species;
% second partition c2 is the output of tclust clustering procedure
out=tclust(meas,3,0.1,100,'msg',0);
c2=out.idx;
% Units inside c2 which contain number 0 are referred to trimmed observations
noisecluster=0;
[~,FM,EFM,VARFM]=FowlkesMallowsIndex(c1,c2,noisecluster);
close all
save tempfileWS