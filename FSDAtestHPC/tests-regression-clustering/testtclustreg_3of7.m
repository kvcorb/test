load tempfileWS
clear all; close all;
load fishery;
X=fishery.data;
% some jittering is necessary because duplicated units are not treated
% in tclustreg: this needs to be addressed
X = X + 10^(-8) * abs(randn(677,2));
y1 = X(:,end);
X1 = X(:,1:end-1);
% some arbitrary weights for the units
we = sqrt(X1)/sum(sqrt(X1));
% tclustreg required parameters
k = 2; restrfact = 50; alpha1 = 0.04 ; alpha2 = 0.01;
% now tclust is run on each combination of mixt and wtrim options
disp('mixt = 0; wtrim = 0;');
disp('standard tclustreg, with classification likelihood and without thinning' );
mixt = 0; wtrim = 0;
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2,'intercept',0,'mixt',mixt,'wtrim',wtrim);
disp('mixt = 2; wtrim = 0;');
disp('mixture likelihood, no thinning' );
mixt = 2; wtrim = 0;
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2,'intercept',0,'mixt',mixt,'wtrim',wtrim);
disp('mixt = 0; wtrim = 1;');
disp('classification likelihood, thinning based on user weights' );
mixt = 0; wtrim = 1;
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2,'intercept',0,'mixt',mixt,'we',we,'wtrim',wtrim);
disp('mixt = 2; wtrim = 1;');
disp('mixture likelihood, thinning based on user weights' );
mixt = 2; wtrim = 1;
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2,'intercept',0,'mixt',mixt,'we',we,'wtrim',wtrim);
disp('mixt = 0; wtrim = 2;');
disp('classification likelihood, thinning based on retention probabilities' );
mixt = 0; wtrim = 2; we = [];
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2,'intercept',0,'mixt',mixt,'wtrim',wtrim);
disp('mixt = 2; wtrim = 2;');
disp('mixture likelihood, thinning based on retention probabilities' );
mixt = 2; wtrim = 2; we = [];
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2,'intercept',0,'mixt',mixt,'wtrim',wtrim);
disp('mixt = 0; wtrim = 3;');
disp('classification likelihood, thinning based on bernoulli weights' );
mixt = 0; wtrim = 3; we = [];
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2,'intercept',0,'mixt',mixt,'wtrim',wtrim);
disp('mixt = 2; wtrim = 3;');
disp('mixture likelihood, thinning based on bernoulli weights' );
mixt = 2; wtrim = 3; we = [];
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2,'intercept',0,'mixt',mixt,'wtrim',wtrim);
disp('mixt = 0; wtrim = 4;');
disp('classification likelihood, tandem thinning based on bernoulli weights' );
mixt = 0; wtrim = 4; we = [];
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2,'intercept',0,'mixt',mixt,'wtrim',wtrim);
disp('mixt = 2; wtrim = 4;');
disp('mixture likelihood, tandem thinning based on bernoulli weights' );
mixt = 2; wtrim = 4; we = [];
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2,'intercept',0,'mixt',mixt,'wtrim',wtrim);
close all
save tempfileWS