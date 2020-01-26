load tempfileWS
clear all; close all;
n = 200;
p = 3;
nsamp = 10000;
ncomb = bc(n,p);
msg = 0;
method = [-4*ones(n/4,1); -2*ones(n/4,1) ; -1*ones(n/4,1); -4*ones(n/4,1)];
C = subsets(nsamp, n, p, ncomb, msg, method);
if verLessThan('matlab','8.4')
hist(double(C(:))); xlim([1 n]);
else
histogram(double(C(:)),'Normalization','pdf','BinMethod','Integers');
end
close all
save tempfileWS