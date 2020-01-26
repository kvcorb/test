load tempfileWS
% First input argument is a structure.
close all
load carsmall
x1 = Weight;
x2 = Horsepower;    % Contains NaN data
y = MPG;    % response
Y=[x1 x2 y];
% Remove Nans
boo=~isnan(y);
Y=Y(boo,:);
Model=Model(boo,:);
m0=5;
[fre]=unibiv(Y);
%create an initial subset with the 3 observations with the lowest
%Mahalanobis Distance
fre=sortrows(fre,4);
bs=fre(1:m0,1);
[out]=FSMeda(Y,bs,'plots',0);
% field label (rownames) is added to structure out
% In this case datatooltip will display the rowname and not the default
% string row.
out.label=cellstr(Model);
figure
plo=struct;
plo.labeladd='1';
plo.clr = 'b';
spmplot(out,'datatooltip',1,'plo',plo)
% The units which are already labelled in each panel of the scatter
% plot matrix are those which in the search had a Mahalanobis distance
% greater than 2.5. Note that the labelling is controlled by option seleunit.
close all
save tempfileWS