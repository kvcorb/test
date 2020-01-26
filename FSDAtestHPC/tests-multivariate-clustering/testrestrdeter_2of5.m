load tempfileWS
av=abs(randn(5,6));
% The third eigenvalue of the second groups is set to 0
av(3,2)=0;
% Maximum ratio among determinants must be equal to 1.6.
restr=1.6;
% Group sizes
niini=[30;40;20;10;50;100];
disp('Original values of the determinants')
disp(prod(av))
% Apply the restriction
a=restrdeter(av,niini,restr);
disp('Restricted eigenvalues which satisfy determinant constraint')
disp(a)
disp('Values of restricted determinants')
disp(prod(a))
disp('Maximum value of ratio among determinants')
disp(max(prod(a))/min(prod(a)))
close all
save tempfileWS