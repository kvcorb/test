load tempfileWS
load fisheriris
% first partition c1 is the true partition
c1=species;
% second partition c2 is the output of tclust clustering procedure
out=tclust(meas,3,0,100,'msg',0);
c2=out.idx;
[ARI,RI,MI,HI]=RandIndexFS(c1,c2);
close all
save tempfileWS