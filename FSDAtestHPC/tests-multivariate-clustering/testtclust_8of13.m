load tempfileWS
close all
Y=load('mixture100.txt');
% Traditional tclust
out1=tclust(Y(:,1:2),3,0.05,1000,'refsteps',20,'plots',1)
title('Traditional tclust','interpreter','LaTex','FontSize',18);
% tclust with mixture models (selection of untrimmed units according to
% likelihood contributions
out2=tclust(Y(:,1:2),3,0.05,1000,'refsteps',20,'plots',1,'mixt',1)
title('tclust with mixture models (likelihood contributions)','interpreter','LaTex','FontSize',18);
% Tclust with mixture models (selection of untrimmed units according to
% densities weighted by estimates of the probability of the components)
out3=tclust(Y(:,1:2),3,0.05,1000,'refsteps',20,'plots',1,'mixt',2)
title('tclust with mixture models (probability of the components)','interpreter','LaTex','FontSize',18);
cascade
close all
save tempfileWS