load tempfileWS
bground = struct;
% Specify a threshold to define the "background" trajectories
bground.bthresh=2;
% Trajectories whose MD is always between -btresh and +bthresh
% are shown as specified in bground.bstyle
bground.bstyle='faint';
malfwdplot(out,'bground',bground)
close all
save tempfileWS