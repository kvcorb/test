load tempfileWS
rng('default')
% Generate 10 numbers from Uniform.
y =mtR(10,0);
out=mpdp(y,0.1,'densfunc',@tpdf,'theta',5, 'lower',-Inf,'upper',Inf,'RelTol',1e-15);
expectedRes =  -8.870156744130275;
assert(isequal(round(out,7), round(expectedRes,7)), 'Error: MATLAB did not output the expected result!')
close all
save tempfileWS