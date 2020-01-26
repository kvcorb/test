load tempfileWS
% Example of the use of function yXplot putting the text for the units
% which have a value of y smaller than 1 per cent percentile and greater than
% 99 per cent percentile of y.
% Note that in this case selunit is a cell array.
selth={num2str(prctile(y,1)) num2str(prctile(y,99))};
yXplot(y,X,'selunit',selth);
close all
save tempfileWS