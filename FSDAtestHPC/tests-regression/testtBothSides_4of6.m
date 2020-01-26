load tempfileWS
bini=[3; 0.0009];
% lambda is fixed
la=-0.2;
% modelfun is the function which specifies the link between X and beta
% This is the spawner recruiter model. See CR for more details.
modelfun = @(beta,X) X*beta(1).*exp(-beta(2)*X);
out=tBothSides(y, X,'modelfun',modelfun,'beta0',bini,'la',la);
close all
save tempfileWS