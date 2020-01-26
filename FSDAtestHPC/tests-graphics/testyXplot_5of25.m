load tempfileWS
% Example of the use of function yXplot putting the text for the units
% which have a value of y smaller than 98 and greater than 102.
% Note that in this case selunit is a cell array.
yXplot(y,X,'selunit',{'98' '102'});
close all
save tempfileWS