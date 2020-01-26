load tempfileWS
modelfun = @(beta,X) X*beta(1).*exp(-beta(2)*X);
out=tBothSides(y, X,'modelfun',modelfun,'dispresults',true,'beta0',bini);
% modelfun is the function which specifies the link between X and beta
%     % This is the spawner recruiter model
%     function [yhat]=modelfun(beta, X)
%     yhat=X*beta(1).*exp(-beta(2)*X);
%     end
close all
save tempfileWS