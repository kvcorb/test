load tempfileWS
close all
Y=load('structurednoise.txt');
out=tkmeans(Y(:,1:2),2,0.1,'plots',1)
out=tkmeans(Y(:,1:2),5,0.15,'plots',1)
cascade
close all
save tempfileWS