load tempfileWS
close all
load fisheriris;
plo=struct;
plo.nameY={'SL','SW','PL','PW'}; % Name of the variables
plo.clr='kbr'; % Colors of the groups
plo.sym={'+' '+' 'v'}; % Symbols of the groups (inside a cell)
% Symbols can also be specified as characters
% plo.sym='++v'; % Symbols of the groups
plo.siz=3.4; % Symbol size
spmplot(meas,'group',species,'plo',plo,'dispopt','box','tag','myspm');
close all
save tempfileWS