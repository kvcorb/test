load tempfileWS
load fisheriris;
% Create scatter plot matrix with specific legends
% plot Sepal length (y) againt the other variables
y=meas(:,1);
X=meas(:,2:4);
[H,AX,BigAx]=gplotmatrix(X,y,species,[],[],[],'on');
% The legends are not clickable
add2yX(H,AX,BigAx)
% Now the legends become clickable
% It is easier to call directly function yXplot
[H,AX,BigAx]=yXplot(meas(:,1),meas(:,2:4),species);
close all
save tempfileWS