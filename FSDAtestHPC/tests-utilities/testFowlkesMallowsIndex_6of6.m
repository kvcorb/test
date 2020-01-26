load tempfileWS
load fisheriris
d = pdist(meas);
Z = linkage(d);
kk=1:15;
% Produce agglomerative hierarchical cluster tree
C = cluster(Z,'maxclust',kk);
FM =zeros(length(kk)-1,1);
for j=kk
FM(j)=FowlkesMallowsIndex(C(:,j),species);
end
plot(kk,FM)
xlabel('Number of groups')
ylabel('Fowlkes and Mallows Index')
close all
save tempfileWS