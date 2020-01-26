load tempfileWS
datatooltip = struct;
% In this example the style of the datatooltip is 'datatip'. Click on a
% trajectory when the resfwdplot is displayed.
%
datatooltip.DisplayStyle = 'datatip';
resfwdplot(out,'datatooltip',datatooltip);
%
% Now we use the default style, which is 'window'.
datatooltip.DisplayStyle = 'window';
resfwdplot(out,'datatooltip',datatooltip);
% Here we specify the RGB color used to highlight the selected trajectory.
% Note that we can obtain the RGB vector with our MATLAB class FSColors.
%
datatooltip = struct;
datatooltip.LineColor = FSColors.yellowish.RGB;
resfwdplot(out,'datatooltip',datatooltip);
% now LineColor is not a valid RGB vector, but red (default) will be used
datatooltip.LineColor = [123 41 12 32 1];
resfwdplot(out,'datatooltip',datatooltip);
close all
save tempfileWS