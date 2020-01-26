load tempfileWS
X=randn(10,3,6);
[Z,mu,sig]=zscoreFS(X,'mean','std',3);
[Z1,mu1,sig1]=zscore(X,[],3);
if isequal(Z,Z1) + isequal(mu,mu1) + isequal(sig,sig) ==3
disp('Everything is equal')
else
disp('Equality not reached')
end
close all
save tempfileWS