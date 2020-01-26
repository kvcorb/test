load tempfileWS
rn = mtR(5,[],0);
expectedRes=[0.8966972 0.2655087 0.3721239 0.5728534 0.9082078]';
sprintf('%s %0.7f  ',m,rn)
sprintf('%s %0.7f  ',r,[0.8966972 0.2655087 0.3721239 0.5728534 0.9082078])
assert(isequal(round(rn,7), round(expectedRes,7)), 'Error: MATLAB did not output the same random values as R!')
close all
save tempfileWS