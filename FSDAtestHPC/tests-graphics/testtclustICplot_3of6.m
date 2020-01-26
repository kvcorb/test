load tempfileWS
datatooltip = struct;
% In this example the style of the datatooltip is 'datatip'. Click on a
% point when the ICplot is displayed.
%
datatooltip.DisplayStyle = 'datatip';
tclustICplot(out,'datatooltip',datatooltip);
close all
save tempfileWS