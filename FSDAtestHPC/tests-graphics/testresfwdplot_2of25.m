load tempfileWS
standard=struct;
standard.LineStyle={'-';'-.';':'};
% Specify the line width
standard.LineWidth=0.5;
resfwdplot(out,'standard',standard)
close all
save tempfileWS