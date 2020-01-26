load tempfileWS
close all
load('emilia2001')
Y=emilia2001.data;
% Extract the variables y1 and y3
% y1= Percentage of infant population (that is the percentage of
% population aged less than 10)
% y3 = % of single member (one component) families
X=Y(:,[1 3]);
% In order to reproduce exactly Figure 2 of Zani, Riani and Corbellini
% (1998), CSDA, we remove municipalities with a percentage of single
% members greater than 45%
X=X(X(:,2)<45,:);
out=boxplotb(X,'strictlyinside',1);
xlabel('y1=Percentage of infant population')
ylabel('y3 = Percentage of single member families')
close all
save tempfileWS