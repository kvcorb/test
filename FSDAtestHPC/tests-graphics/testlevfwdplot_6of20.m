load tempfileWS
datatooltip = struct;
% In this example the style of the datatooltip is 'datatip'. Click on a
% trajectory when the levfwdplot is displayed.
datatooltip.DisplayStyle = 'datatip';
levfwdplot(out,'datatooltip',datatooltip);
% Now we use the default style, which is 'window'.
datatooltip.DisplayStyle = 'window';
levfwdplot(out,'datatooltip',datatooltip);
close all
save tempfileWS