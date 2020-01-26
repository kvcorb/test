load tempfileWS
load fisheriris;
% Create scatter plot matrix with specific legends
% plot Sepal length (y) againt the other variables
y=meas(:,1);
X=meas(:,2:4);
[H,AX,BigAx]=yXplot(meas(:,1),meas(:,2:4),species);
% add a regression line to each group
add2yX(H,AX,BigAx,'bivarfit','0')
close all
save tempfileWS