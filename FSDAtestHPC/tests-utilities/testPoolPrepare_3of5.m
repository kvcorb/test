load tempfileWS
n = 50000;
x = randn(1,n) ;
y = zeros(1,n);
% sequential run
tic
for i = 1 : n
y(i) = std(x(1:i));
end
fprintf('\n\n\n  Normal for: %f secs \n \n ',toc);
% parallel run
numpool = 4;
pariter = n;
UserOptions = {};
[numpool, tstart, progbar, usePCT, usematlabpool] = ...
PoolPrepare(numpool,pariter,UserOptions);
% show progrbar
disp(progbar)
parfor i = 1 : n
y(i) = std(x(1:i));
end
cleanpool = 1; % this closes the pool of MATLAB sessions
tend = PoolClose(cleanpool, tstart, progbar, usePCT,  usematlabpool);
fprintf('\n\n\n      parFor: %f secs\n\n',tend);
close all
save tempfileWS