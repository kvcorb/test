A=magic(5);
disp('Input matrix A')
disp(A)
disp('Extract the elements above the main diagonal of matrix A in a vector')
k = 1;
y=triu2vec(A,k);
disp(y)
close all
save tempfileWS