load tempfileWS
rng(1000)
Y=load('geyser2.txt');
k=3;
[out]=tclust(Y,k,0.10,10);
% Make sure that group which contains
% unit 10 is always labelled with number 1. Similarly,
% make sure that the group which contains unit 12 is always labelled
% with number 2, 
UnitsSameGroup=[10;12];
[idxnew, OldNewIndexes]=ClusterRelabel({out.idx}, UnitsSameGroup);
% In this case OldNewIndexes is equal to 
% 3 1 
% 3 2 
% It means that in the first iteration labels 1 and 3 have swapped
% while in the second iteration label 3 and 2 have swapped
subplot(1,2,1)
gscatter(Y(:,1),Y(:,2),out.idx)
text(Y(UnitsSameGroup,1),Y(UnitsSameGroup,2),num2str(UnitsSameGroup))
subplot(1,2,2)
gscatter(Y(:,1),Y(:,2),idxnew{:})
text(Y(UnitsSameGroup,1),Y(UnitsSameGroup,2),num2str(UnitsSameGroup))
% Now (as is evident from the right panel) unit which contains group 10
% has label '1' while group which contains unit 12 has label '2'.
close all
save tempfileWS