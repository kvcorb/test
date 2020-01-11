load tempfileWS
% modelfun is the function which specifies the link between X and beta
modelfun = @(beta,X) X*beta(1).*exp(-beta(2)*X);
out=tBothSides(y, X,'modelfun',modelfun,'prolik',true,'beta0',bini);
close all
save tempfileWS