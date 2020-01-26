Y=randn(10,2);
MU=median(Y); 
SIGMA=[0.3 0.4; 0.4 1];
% Compute MD using as centroid the medians and shape matrix SIGMA
d=mahalFS(Y,MU,SIGMA);
close all
save tempfileWS