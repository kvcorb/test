load tempfileWS
% The Tag setting will be used in the next example to demonstrate the
% undock option.
% Iris data: scatter plot matrix with univariate boxplots on the main
% diagonal.
close all
load fisheriris;
plo=struct;
plo.nameY={'SL','SW','PL','PW'};
spmplot(meas,'group',species,'plo',plo,'dispopt','box');
figure
spmplot(meas,'group',species,'plo',plo,'dispopt','box','overlay','ellipse');
figure
spmplot(meas,'group',species,'plo',plo,'dispopt','box','overlay','contour');
figure
spmplot(meas,'group',species,'plo',plo,'dispopt','box','overlay','contourf');
set(gcf,'Tag','newTag')
cascade
close all
save tempfileWS