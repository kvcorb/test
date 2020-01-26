% This example reproduces Figure 1 of Corbellini, Riani and Atkinson,
% 2015, Statistical Methods and Applications
close all
X=load('writingdata.txt');
out=boxplotb(X);
xlabel('horizontal coordinate')
ylabel('vertical coordinate')
title('Bivariate boxplot of the writing data at time $t=5$','Interpreter','Latex')
close all
save tempfileWS