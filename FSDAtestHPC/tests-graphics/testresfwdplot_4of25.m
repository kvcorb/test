load tempfileWS
bground = struct;
% Specify a threshold to define the "background" trajectories
bground.bthresh=2;
% Trajectories whose residual is always between -btresh and +bthresh
% are shown as specified in bground.bstyle
bground.bstyle='hide';
resfwdplot(out,'bground',bground)
close all
save tempfileWS