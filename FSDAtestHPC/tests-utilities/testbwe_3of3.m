load tempfileWS
load fishery;
X = fishery.data;
X = X+10^(-8)*abs(randn(677,2)); % some jittering to avoid dplicate points
h = bwe(X)
h = bwe(X,'scott')
h = bwe(X,'normal')
h = bwe(X,'robust')
close all
save tempfileWS