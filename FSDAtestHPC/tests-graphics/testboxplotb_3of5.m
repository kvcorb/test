load tempfileWS
close all
X=load('bodybrain.txt');
X=log10(X);
out=boxplotb(X);
xlabel('Log (to the base 10) body weight')
ylabel('Log (to the base 10) brain weight')
title('Bivariate boxplot of Log brain weight and Log body weight for 28 animals')
close all
save tempfileWS