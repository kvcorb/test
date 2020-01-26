rng(10,'twister')
eigenvalues=abs(10*randn(3,4));
% niini is the vector containing the sizes of the 4 groups
niini=[30;40;20;10];
out=restreigen(eigenvalues,niini,1.1)
disp('Input matrix of unrestricted eigenvalues')
disp(eigenvalues)
disp('Output matrix of restricted eigenvalues')
disp(out)
disp('Ratio between largest and smallest unrestricted eigenvalues')
disp(max(max(eigenvalues))/min(min(eigenvalues)))
disp('Ratio between largest and smallest restricted eigenvalues')
disp(max(max(out))/min(min(out)))
close all
save tempfileWS