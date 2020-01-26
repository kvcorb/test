load tempfileWS
% This example uses a matrix of logicals to set the undocked panels
figure
spmplot(meas,'group',species,'plo',plo,'dispopt','hist','undock',logical(eye(size(meas,2))));
cascade
% This example uses a matrix n x 2 to set the undocked panels
close all;
figure
spmplot(meas,'group',species,'plo',plo,'dispopt','box','overlay','boxplotb','undock',[1,3;2,4]);
cascade
close all
save tempfileWS