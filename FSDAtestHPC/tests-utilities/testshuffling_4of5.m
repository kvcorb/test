load tempfileWS
% REMARK: shuffling code is interpreted whereas randperm is compiled;
% therefore, the comparison has to be done using tic-toc statements, 
% as in the example below (the MATLAB profiler would over-estimate the 
% shuffling time). 
RefTime = 1;
for n = [10, 10^2, 10^3, 10^4, 10^5, 10^6, 10^7]
X = 1:n;
% Estimate the number of profiling loops:
iniTime = cputime;
countLoop = 0;
while cputime - iniTime < RefTime
Xp = X(randperm(n));  
clear('Xp');   % Necessary to suppress JIT acceleration
countLoop = countLoop + 1;
end
nDigit = max(1, floor(log10(max(1, countLoop))) - 1);
nLoop  = max(4, round(countLoop / 10 ^ nDigit) * 10 ^ nDigit);
% monitor randperm
tic;
for i = 1:nLoop
Xp = X(randperm(n));
clear('Xp');
end
RandPermTime = toc;
% monitor shuffling
tic;
for i = 1:nLoop
Xp = shuffling(X);
clear('Xp');
end
ShufflingTime = toc;
% results
fprintf('\n%d elements shuffled %d times: \n', n, nLoop);
disp(['    - shuffling etime (seconds): ' num2str(ShufflingTime)]);
disp(['    - randperm  etime (seconds): ' num2str(RandPermTime)]);
fprintf('SHUFFLING TIME IS %.1f%% of RANDPERM TIME\n', 100.0 * ShufflingTime / RandPermTime);
end
close all
save tempfileWS