load tempfileWS
numRandomNumbers=5;
% (runif(numRandomNumbers,3,7))
rn = mtR(numRandomNumbers,[0,3,7]);
expectedRes=[6.586789 4.062035 4.488496 5.291413 6.632831]';
sprintf('%s %0.7f   ',m,rn)
sprintf('%s %0.7f   ',r,[6.586789 4.062035 4.488496 5.291413 6.632831])
assert(isequal(round(rn,6), round(expectedRes,6)), 'Error: MATLAB did not output the same random values as R!')
close all
save tempfileWS