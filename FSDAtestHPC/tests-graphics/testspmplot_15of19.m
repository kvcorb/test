load tempfileWS
close all
load carsmall
x1 = Weight;
x2 = Horsepower;    % Contains NaN data
y = MPG;    % response
Y=[x1 x2 y];
% Remove Nans
boo=~isnan(y);
Y=Y(boo,:);
RowLabelsMatrixY=Model(boo,:);
seluni=[10 30];
plo=struct;
plo.label=cellstr(RowLabelsMatrixY);
% add labels for units inside vector seluni
spmplot(Y,'selunit',seluni,'plo',plo)
close all
save tempfileWS