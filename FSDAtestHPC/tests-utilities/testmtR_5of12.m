load tempfileWS
numRandomNumbers=5;
rn = mtR(numRandomNumbers,1);
expectedRes=[1.2629543 -0.3262334 1.3297993 1.2724293 0.4146414]';
sprintf('%s %0.7f   ',m,rn)
sprintf('%s %0.7f   ',r,[1.2629543 -0.3262334 1.3297993 1.2724293 0.4146414])
assert(isequal(round(rn,7), round(expectedRes,7)), 'Error: MATLAB did not output the same random values as R!')
close all
save tempfileWS