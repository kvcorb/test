load tempfileWS
Y=load('M5data.txt');
close all
out=tkmeans(Y(:,1:2),3,0,'plots',1)
out=tkmeans(Y(:,1:2),3,0.1,'plots','ellipse')
out=tkmeans(Y(:,1:2),3,0.1,'plots','contour')
out=tkmeans(Y(:,1:2),3,0.1,'plots','contourf')
out=tkmeans(Y(:,1:2),3,0.1,'plots','boxplotb')
cascade;
% using a structure for plots
contOpt = struct;
contOpt.cmap = summer 
out=tkmeans(Y(:,1:2),3,0.1,'plots',contOpt)
cascade
close all
save tempfileWS