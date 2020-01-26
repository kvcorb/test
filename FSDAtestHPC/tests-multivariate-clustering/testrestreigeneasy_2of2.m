load tempfileWS
v=10;
k=8;
tol=1e-8;
if verLessThanFS(9.2)== false
% If MATLAB version is at least 2017a
userepmat=2;
elseif verLessThanFS(8.1) == false
% if MATLAB version is at least R2013b  
userepmat=1;
else
userepmat=0;
end
oldroutinetime=0;
newroutinetime=0;
rng(1)
for j=1:10000
eigenvalues=100*abs(randn(v,k));
% niini is the vector containing the sizes of the 4 groups
niini=randi(100,[k,1]);
tic;
outold=restreigeneasy(eigenvalues,niini,1.1);
% Uncomment the line below if you want 
% outold=restreigen(eigenvalues,niini,1.1,tol,1);
oldroutinetime=oldroutinetime+toc;
tic;
outnew=restreigen(eigenvalues,niini,1.1,tol,userepmat);
newroutinetime=newroutinetime+toc;
if max(max(abs(outold-outnew)))>1e-5
error('The two routines are different')
end
end
disp(['Computing time of restreigeneasy: ' num2str(oldroutinetime)])
disp(['Computing time of restreigen: ' num2str(newroutinetime)])
close all
save tempfileWS