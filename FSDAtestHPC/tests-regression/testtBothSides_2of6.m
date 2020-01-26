load tempfileWS
la=0.063;
% A linear link between X and beta is assumed
out=tBothSides(y, X,'la',la);
close all
save tempfileWS