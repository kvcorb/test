load tempfileWS
load fisheriris;
plo=struct;
plo.nameY={'SL','SW','PL','PW'};
spmplot(meas,species,plo,'hist');
% insert text 'any string' as x label
% and return both the handle to the axis (inside haxis) and the handle to the label (inside hlabel).
[haxis,hlabel]=suplabel('Title added to the x axis')
close all
save tempfileWS