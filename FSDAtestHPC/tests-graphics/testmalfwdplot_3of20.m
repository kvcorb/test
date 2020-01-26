load tempfileWS
fground = struct;
% Specify which trajectories have to be highlighted
fground.funit=[2 5 20 23 35 45];
% Specify the steps in which labels have to be put
n=size(Y,1);
fground.flabstep=[n/2 n*0.75 n+0.5];;
% Specify the line width of the highlighted trajectories
fground.LineWidth=3;
% Produce a monitoring MD plot in which labels are put for units
% [2 5 20 23 35 45] in steps [n/2 n*0.75 n+0.5] of the search
malfwdplot(out,'fground',fground)
close all
save tempfileWS