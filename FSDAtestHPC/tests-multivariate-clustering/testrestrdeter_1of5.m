rng(10,'twister')
eigenvalues=abs(10*randn(3,4));
% niini is the column vector containing the sizes of the 4 groups
niini=[30;40;20;10];
out=restrdeter(eigenvalues,niini,1.1)
disp('Input matrix of unrestricted eigenvalues')
disp(eigenvalues)
disp('Output matrix of restricted eigenvalues which satisfy determinant constraint')
disp(out)
disp('Ratio between largest and smallest determinant')
disp(max(prod(eigenvalues))/min(prod(eigenvalues)))
disp('Ratio between largest and smallest restricted determinants')
disp(max(prod(out))/min(prod(out)))
close all
save tempfileWS