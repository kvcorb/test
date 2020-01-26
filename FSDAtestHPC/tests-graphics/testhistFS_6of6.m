load tempfileWS
close all;clear all;
X = crosstab2datamatrix([10 20 30]); X=X(:,2);
X1 = 444*ones(60,1); X1(40:60)= 999; X1 = shuffling(X1);
X = X+5;
if verLessThan('matlab','8.5')
groups = num2str(X1);
else
groups = categorical(X1);
end
W = ones(size(X,1),1); W(12) = 100;
histFS(X,10,groups,[],[],[],W);
title({'Weighted histograms:' , 'please check with tabulateFS(W) and tabulateFS(X)'},'interpreter','latex','FontSize',18);
figure;
histFS(X,10,groups);
title('Standard histogram','interpreter','latex','FontSize',18);
cascade;
disp('tabulateFS(X)');
tabulateFS(X);
disp('tabulateFS(W)');
tabulateFS(W);
close all
save tempfileWS