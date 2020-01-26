load tempfileWS
% thinning over the original bi-variate data
[Wt2,pretain2,RetUnits] = wthin([x,y]);
% disp(RetUnits)
close all
save tempfileWS