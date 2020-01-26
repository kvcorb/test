load fisheriris;
% Create scatter plot matrix with specific legends
[H,AX,BigAx]=gplotmatrix(meas,[],species);
% The legens are not clickable
% [H,AX,BigAx]=gplotmatrix(meas,[],species,[],[],[],[],'grpbars')
add2spm(H,AX,BigAx)
% Now the legends become clickable
close all
save tempfileWS