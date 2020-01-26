close all
Y=load('geyser2.txt');
out=tkmeans(Y,3,0.03,'plots',1)
close all
save tempfileWS