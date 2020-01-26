load tempfileWS
% In this case selunit is passed as a numeric vector and it contains
% the list of the units which have to be labelled in the yXplot.
selth=[2 10 20];
yXplot(y,X,'selunit',selth);
close all
save tempfileWS