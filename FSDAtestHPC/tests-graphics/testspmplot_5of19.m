load tempfileWS
% Iris data: scatter plot matrix with univariate boxplots on the main
% diagonal.
close all
load fisheriris;
plo=struct;
plo.nameY={'SL','SW','PL','PW'};
over = struct;
over.type = 'contourf';
over.include = logical([1 0 0]);
over.cmap = summer;
figure
spmplot(meas,'group',species,'plo',plo,'dispopt','box','overlay',over);
close all
save tempfileWS