load tempfileWS
close all
Y=load('structurednoise.txt');
out=tclust(Y(:,1:2),2,0.1,100,'plots',1)
out=tclust(Y(:,1:2),5,0.15,1,'plots',1)
cascade
close all
save tempfileWS