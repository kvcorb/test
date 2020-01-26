load tempfileWS
state=100;
randn('state', state);
n=100;
X=randn(n,3);
bet=[3;4;5];
y=3*randn(n,1)+X*bet;
y(1:20)=y(1:20)+13;
[outFS]=FSR(y,X,'plots',2);
% The envelopes based on all the observations show that in the central
% part of the search the observed curve is well beyond the extreme
% thresholds. More precisely, the message inside the graph informs that
% the signal took place in step 81 because the value of minimum deletion
% residual in this step was greater than 99.999% threshold.
% Once a signal takes place the envelopes are resuperimposed until a
% stopping rule is fulfilled.
% The procedure of resuperimposing envelopes in this case stops when
% n = 85, the first time in which we have a value of rmin(m) for
% $n>=m^\dagger-1$ greater than the 99% threshold. The group can
% therefore be considered as homogeneous up to when we include 84 units.
close all
save tempfileWS