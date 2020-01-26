load tempfileWS
close;
out=simulateTS(100,'plots',1,'samescale',false);
close all
save tempfileWS