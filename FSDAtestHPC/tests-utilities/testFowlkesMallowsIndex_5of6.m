load tempfileWS
load fisheriris
d = pdist(meas);
Z = linkage(d);
C = cluster(Z,'maxclust',3);
[AFM,FM,FMexp,FMvar]=FowlkesMallowsIndex(C,species);
disp('FM index is equal to')
disp(FM)
disp('Expectation of FM index is')
disp(FMexp)
disp('Variance of FM index is')
disp(FMvar)
disp('Adjsuted FM index is equal to')
disp(AFM)
close all
save tempfileWS