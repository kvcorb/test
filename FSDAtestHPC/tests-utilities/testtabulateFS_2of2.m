load tempfileWS
% Reinitialize the random number generator to its startup
% configuration.
rng('default') 
rng(100)
x=randi([1 10],100,1);
x(100)=30;
% Output of tabulate
disp('Output of MATLAB function tabulate')
disp(tabulate(x));
% Output of tabulateFS
disp('Output of FSDA function tabulateFS')
disp(tabulateFS(x));
close all
save tempfileWS