load tempfileWS
close all
load carsmall
x1 = Weight;
x2 = Horsepower;    % Contains NaN data
y = MPG;    % response
X=[x1 x2];
% Remove Nans
boo=~isnan(y);
y=y(boo,:);
X=X(boo,:);
RowLabelsMatrixY=Model(boo,:);
seluni=[10 30];
plo=struct;
plo.label=cellstr(RowLabelsMatrixY);
% add labels for units inside vector seluni
yXplot(y,X,'selunit',seluni,'plo',plo)
close all
save tempfileWS