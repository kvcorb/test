load tempfileWS
A=magic(5);
disp('Input matrix A')
disp(A)
disp('Extract the elements on and above diagonal of matrix A in a vector')
y=triu2vec(A);
disp(y)
close all
save tempfileWS