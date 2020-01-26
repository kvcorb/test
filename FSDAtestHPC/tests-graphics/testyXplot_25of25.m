load tempfileWS
% First input argument of yXplot is a structure.
load carsmall
x1 = Weight;
x2 = Horsepower;    % Contains NaN data
X=[x1 x2];
y = MPG;    % Contaminated data
boo=~isnan(y);
y=y(boo,:);
X=X(boo,:);
Model=Model(boo,:);
[out]=LXS(y,X,'nsamp',1000);
[out]=FSReda(y,X,out.bs);
% field label (rownames) is added to structure out
% In this case datatooltip will display the rowname and not the default
% string row...
out.label=cellstr(Model);
yXplot(out,'datatooltip',1)
close all
save tempfileWS