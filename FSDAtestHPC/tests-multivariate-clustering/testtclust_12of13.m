load tempfileWS
close all
load('swiss_banknotes');
Y=swiss_banknotes.data;
out=tclust(Y,3,0.01,20,'restrtype','deter','refsteps',20,'plots',1)
close all
save tempfileWS