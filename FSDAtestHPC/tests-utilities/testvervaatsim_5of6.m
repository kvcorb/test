load tempfileWS
clear all;
close all;
betav = 1;
n = 100;
nmax    = 500;
betamax = 10;
rng('default')
rng(123);
N     = randi(nmax,n,1);
betav = randi(betamax,n,1);
ti = tic;
for i=1:n;
for j=1:N(i)
y1(j) = vervaatsim(betav(i));
end
end
tf = toc(ti);
disp(['Cloud-Huber: etime = ' num2str(tf)]);
close all
save tempfileWS