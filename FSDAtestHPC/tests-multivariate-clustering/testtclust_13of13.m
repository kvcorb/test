load tempfileWS
close all
Y=load('geyser2.txt');
out=tclust(Y,4,0.1,10,'restrtype','deter','refsteps',20,'plots',1)
close all
save tempfileWS