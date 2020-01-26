load tempfileWS
Y=load('swiss_banknotes.txt');
[fre]=unibiv(Y);
m0=20;
bs=fre(1:m0,1);
[out]=FSMeda(Y,bs,'init',30);
% Initialize structure fground
fground = struct;
% Specify which trajectories have to be highlighted
fground.funit=out.Un(end-15:end,2);
% Specify the steps in which labels have to be put
n=size(Y,1);
fground.flabstep=[n/2 n*0.75 n+0.5];;
% Specify the line width of the highlighted trajectories
fground.LineWidth=3;
% Produce a monitoring MD plot in which labels are put for units
% out.Un(end-15:end,2)in steps [n/2 n*0.75 n+0.5] of the search
malfwdplot(out,'fground',fground)
close all
save tempfileWS