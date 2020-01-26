load tempfileWS
alpha=0.999;
weights=GYfilt(randn(100,1),'alpha',alpha);
close all
save tempfileWS