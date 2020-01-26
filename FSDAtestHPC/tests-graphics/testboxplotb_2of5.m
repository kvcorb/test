load tempfileWS
close all
X=load('stars.txt');
out=boxplotb(X,'strictlyinside',1);
xlabel('Log effective surface temperature')
ylabel('Log light intensity')
close all
save tempfileWS