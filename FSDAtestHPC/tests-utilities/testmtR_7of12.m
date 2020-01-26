load tempfileWS
numRandomNumbers=5;
% rnorm(numRandomNumbers,2,15)
rn = mtR(numRandomNumbers,[1,2,15]);
expectedRes=[20.944314 -2.893500 21.946989 21.086440  8.219622]';
sprintf('%s %0.7f   ',m,rn)
sprintf('%s %0.7f   ',r,[20.944314 -2.893500 21.946989 21.086440  8.219622])
assert(isequal(round(rn,6), round(expectedRes,6)), 'Error: MATLAB did not output the same random values as R!')
close all
save tempfileWS