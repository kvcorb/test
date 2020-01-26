load tempfileWS
close all
Y=load('mixture100.txt');
out=tclust(Y(:,1:2),3,0.05,1000,'refsteps',20,'plots',1)
out=tclust(Y(:,1:2),3,0.05,1,'refsteps',20,'plots',1)
cascade
close all
save tempfileWS