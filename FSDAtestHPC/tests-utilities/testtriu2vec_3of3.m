load tempfileWS
r=5;
disp(['Input scalar is r=' num2str(r)])
disp('Extract the linear indexes of the elements on and above diagonal')
disp(['of a square matrix of size ' num2str(r) ' in a vector'])
y=triu2vec(r);
disp(['The linear indexes of the elements on and above diagonal of a square matrix of size ' num2str(r) ' are:'])
disp(y)
disp(['For example if A=invhilb(' num2str(r) ')'])
A=invhilb(r)
disp('The elements on and above diagonal of A are');
A1=A(:);
disp(A1(y))
close all
save tempfileWS