load tempfileWS
X=[380	700	    1	0	0  3 
500	1800	1	1	1  3
310	480	    0	0	0  2];
% The first two variables are quantitative and 3:5 are
% dichotomous and the last is polithomous.
[S,Stable]=GowerIndex(X,'l',[ 1 1 2 2 2 3]);
close all
save tempfileWS