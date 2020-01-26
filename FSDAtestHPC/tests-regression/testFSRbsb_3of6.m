load tempfileWS
state=1000;
randn('state', state);
n=100;
X=randn(n,3);
bet=[3;4;5];
y=3*randn(n,1)+X*bet;
y(1:20)=y(1:20)+15;
[outLMS]=LXS(y,X);
bsb=outLMS.bs;
% Store in matrix BB the units belonging to subset in each step of the forward search
[Un,BB] = FSRbsb(y,X,bsb);
% Create the 'monitoring units plot'
figure;
seqr=[Un(1,1)-1; Un(:,1)];
plot(seqr,BB','bx');
xlabel('Subset size m');
ylabel('Monitoring units plot');
% The plot, which monitors the units belonging to subset in each step of
% the forward search shows that apart from unit 11 which enters the
% search in step m=78 all the other contaminated units enter the search
% in the last 19 steps.
% if we consider the seed state=500, we obtain a plot showing that the
% 20 contaminated units enter the search in the final 20 steps.
state=500;
randn('state', state);
X=randn(n,3);
y=3*randn(n,1)+X*bet;
y(1:20)=y(1:20)+15;
[outLMS]=LXS(y,X);
bsb=outLMS.bs;
% Store in matrix BB the units belonging to subset in each step of the forward search
[Un,BB] = FSRbsb(y,X,bsb);
% Create the 'monitoring units plot'
figure;
seqr=[Un(1,1)-1; Un(:,1)];
plot(seqr,BB','bx');
xlabel('Subset size m');
ylabel('Monitoring units plot');
close all
save tempfileWS