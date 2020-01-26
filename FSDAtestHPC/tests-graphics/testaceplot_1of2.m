rng('default')
seed=11;
negstate=-30;
n=200;
X1 = mtR(n,0,seed)*2-1;
X2 = mtR(n,0,negstate)*2-1;
X3 = mtR(n,0,negstate)*2-1;
X4 = mtR(n,0,negstate)*2-1;
res=mtR(n,1,negstate);
% Generate y
y = log(4 + sin(3*X1) + abs(X2) + X3.^2 + X4 + .1*res );
X = [X1 X2 X3 X4];
% Apply the ace algorithm
out= ace(y,X);
% Show the output graphically using function aceplot
aceplot(out)
close all
save tempfileWS