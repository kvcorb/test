load tempfileWS
clear all;
betav = 1;
rep = 10;
n = 10000;
N = randi(n,rep,1);
t1 = tic;
for i=1:rep;
y1 = vervaatrnd(betav,N(i),1);
end
t1end = toc(t1);
t2 = tic;
for i=1:rep;
y2 = vervaatrnd(betav,N(i),2);
end
t2end = toc(t2);
disp(['Barabesi-Pratelli: etime = ' num2str(t1end)]);
disp(['Cloud-Huber: etime = ' num2str(t2end)]);
close all
save tempfileWS