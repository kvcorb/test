load tempfileWS
clear all; close all;
% parameters
n      = 100;
p      = 3;
nsamp  = 1000000;
ncomb  = bc(n,p);
msg    = 0;
% Sampling without repetition nsamp p-subsets from a dataset of n units.
C = subsets(nsamp, n, p, ncomb, msg);
if verLessThan('matlab','8.4')
hist(double(C(:))); xlim([1 n]);
else
histogram(double(C(:)),'Normalization','pdf','BinMethod','Integers'); xlim([1 n]);
% this superimposes a line with the unit counts
frC = tabulateFS(double(C(:)));
hold on; plot(1:n,frC(:,3)/100,'r-','LineWidth',3);
end
% The hypergeometric distribution hygepdf(X,M,K,N) computes the probability
% of drawing exactly X of a possible K items in N drawings without
% replacement from a group of M objects. For drawings with replacement,
% the distribution would be binomial.
hpdf = hygepdf(0:p,n,n/2,p);
% Say that the n/2 target items (which determine the success of a draw) are
% in the subset formed by units 1,2,...n/2. Let's then count how many times
% we get units from this group.
c   = C<=n/2;
sc  = sum(c,2);
tab = tabulateFS(sc);
tab = (tab(:,2)/sum(tab(:,2)))';
disp('Probability of getting 0 to p successes in p drawns (hypergeometric pdf):');
disp(hpdf);
disp('Frequencies of the 0 to p successes in the p drawns (subsets output):');
disp(tab);
close all
save tempfileWS