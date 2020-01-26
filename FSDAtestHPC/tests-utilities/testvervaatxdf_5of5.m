load tempfileWS
clear all;
close all;
betav = 1;
n = 100;
nmax    = 500;
betamax = 10;
rng(123);
N     = randi(nmax,n,1);
betav = randi(betamax,n,1);
ti = tic;
for i=1:n;
for j=1:N(i)
y1(j) = vervaatxdf(betav(i));
end
end
tf = toc(ti);
tip = tic;
pascalM = pascal(101); 
for i=1:n;
for j=1:N(i)
y1p(j) = vervaatxdf(betav(i),1,pascalM);
end
end
tfp = toc(tip);
disp(['Barabesi-Pratelli: etime = ' num2str(tf)]);
disp(['Barabesi-Pratelli - Pascal run only once: etime = ' num2str(tfp)]);
close all
save tempfileWS