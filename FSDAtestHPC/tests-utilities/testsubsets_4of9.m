load tempfileWS
ncomb = bc(1000,5);
[C , nselected] = subsets(500000,1000,5,ncomb,1);
close all
save tempfileWS