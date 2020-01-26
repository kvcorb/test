load tempfileWS
clear all; close all;
% parameters
n      = 500;
p      = 3;
nsamp  = 50000;
ncomb  = bc(n,p);
msg    = 0;
% Sampling probability of the first n/2 units is 10 times larger than the others n/2.
method = [10*ones(n/2,1); ones(n/2,1)];
% no need to normalize weights: method = method(:)' / sum(method);
C = subsets(nsamp, n, p, ncomb, msg, method);
if verLessThan('matlab','8.4')
hist(double(C(:))); xlim([1 n]);
else
histogram(double(C(:)),'Normalization','pdf','BinMethod','Integers');
end
% Here we address the case when the sampling (without replacement) is biased,
% in the sense that the probabilities to select the units in the sample are
% proportional to weights provided using option 'method'. In this case, the
% extraction probabilities follow Wallenius' noncentral hypergeometric
% distribution. The sampling scheme is the same of that of the hypergeometric
% distribution but, in addition, the success and failure are associated with
% weights w1 and w2 and we will say that the odds ratio is W = w1 / w2. The
% function is then called as: wpdf = WNChygepdf(x,N,K,M,W).
for i = 0:p
wpdf(i+1) = WNChygepdf(i,p,n/2,n,10);
end
% counts of the actual samples
c   = C<=n/2;
sc  = sum(c,2);
tab = tabulateFS(sc);
tab = (tab(:,2)/sum(tab(:,2)))';
disp('Probability of getting 0 to p successes in p weighted drawns (non-central hypergeometric pdf):');
disp(wpdf);
disp('Frequencies of the 0 to p successes in the p weighted drawns (subsets output):');
disp(tab);
% The non-central hypergeometric is also available in the R package
% BiasedUrn. In the example above, where there are just two groups and one
% weight defining the ratio between the units in the two groups, the function
% to use is dWNCHypergeo (for Wallenius' distribution):
%
% dWNCHypergeo(c(0,1,2,3), 50, 50, 3, 10)
% [1] 0.0007107089 0.0225823308 0.2296133830 0.7470935773
%
% The general syntax of the function is:
% dWNCHypergeo(x, m1, m2, n, odds)
% x  = Number of red balls sampled.
% m1 = Initial number of red balls in the urn.
% m2 = Initial number of white balls in the urn.
% n  = Total number of balls sampled.
% N  = Total number of balls in urn before sampling.
% odds = Probability ratio of red over white balls.
% p = Cumulative probability.
% nran = Number of random variates to generate.
% mu = Mean x.
% precision = Desired precision of calculation.
close all
save tempfileWS