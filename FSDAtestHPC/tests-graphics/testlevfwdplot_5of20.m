load tempfileWS
bground = struct;
% Specify a threshold to define the "background" trajectories
bground.bthresh=0.1;
% Trajectories whose leverage is always between -btresh and +bthresh
% are shown as specified in bground.bstyle
bground.bstyle='hide';
levfwdplot(out,'bground',bground)
close all
save tempfileWS