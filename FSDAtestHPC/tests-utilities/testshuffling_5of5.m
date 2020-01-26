load tempfileWS
% Note that results can differ between MATLAB releases. See below.
stoc = 0; rtoc = 0; loops = 100; n = zeros(100,1);
for i=1:loops
n(i) = randi(1000000 , 1);
%n(i) = floor(1000000*abs(randn));
x = randi(1000000 , n(i) , 1);
nn=numel(x);
st = tic;
xperm1 = shuffling(x);
stoc = stoc+toc(st);
rt = tic;
ix = randperm(nn);
xperm2 = x(ix);
rtoc = rtoc+toc(rt);
clear('xperm1','ix','xperm2'); % Necessary to suppress JIT acceleration, for realistic times
end
disp(['shuffling etime (seconds): ' num2str(stoc)]);
disp(['randperm  etime (seconds): ' num2str(rtoc)]);
fprintf('==> SHUFFLING TIME IS %.1f%% of RANDPERM TIME\n', 100.0 * stoc / rtoc);
% Results on R2016b
%     shuffling etime (seconds): 4.5303
%     randperm  etime (seconds): 5.3804
%     ==> SHUFFLING TIME IS 84.2% of RANDPERM TIME
% Results on R2012a
% shuffling etime (seconds): 7.9629
% randperm  etime (seconds): 4.9526
% ==> SHUFFLING TIME IS 160.8% of RANDPERM TIME
% Results on R2009a
% shuffling etime (seconds): 8.4239
% randperm  etime (seconds): 9.5947
% ==> SHUFFLING TIME IS 87.8% of RANDPERM TIME
close all
save tempfileWS