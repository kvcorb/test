load tempfileWS
eigenvalues=abs(randn(3,4));
eigenvalues(:,3)=0;
restreigen(eigenvalues,niini,1.1)
eigenvalues(:,3)=1;
restreigen(eigenvalues,niini,1.1)
close all
save tempfileWS