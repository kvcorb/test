% R SIDE: display in the MATLAB command window
%         the strings to execute in R
Rstring = ['EXECUTE THE FOLLOWING IN R AND COMPARE RESULTS' char(10) char(10) ...
'RNGkind("Mersenne-Twister") # set "Mersenne-Twister" "Inversion"' char(10)...
'set.seed(0)' char(10)...
'state = .Random.seed' char(10) ...
char(10)...
'runif(5)' char(10)...
'# [1] 0.8966972 0.2655087 0.3721239 0.5728534 0.9082078' char(10)'];
disp(Rstring);
% MATLAB SIDE:
clear all; close all;
m = 'MATLAB: ';
r = 'R:      ';
expectedRes = [0.8966972 0.2655087 0.3721239 0.5728534 0.9082078]';
% 5 random numbers from a uniform distribution in [0 1].
rn = mtR(5);
sprintf('%s %0.7f  ',m,rn)
sprintf('%s %0.7f  ',r,[0.8966972 0.2655087 0.3721239 0.5728534 0.9082078])
assert(isequal(round(rn,7), round(expectedRes,7)), 'Error: MATLAB did not output the same random values as R!')
close all
save tempfileWS