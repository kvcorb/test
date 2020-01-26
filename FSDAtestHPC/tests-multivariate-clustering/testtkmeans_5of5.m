load tempfileWS
close all
Y=load('mixture100.txt');
out=tkmeans(Y(:,1:2),3,0,'plots',1)
out=tkmeans(Y(:,1:2),2,0.05,'plots',1)
cascade
close all
save tempfileWS