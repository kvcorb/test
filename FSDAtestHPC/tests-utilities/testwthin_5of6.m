load tempfileWS
load fishery;
X=fishery.data;
% some jittering is necessary because duplicated units are not treated
% in tclustreg: this needs to be addressed
X = X + 10^(-8) * abs(randn(677,2));
% thinning over the original bi-variate data
[Wt3,pretain3,RetUnits3] = wthin(X ,'retainby','comp2one');
figure;
plot(X(Wt3,1),X(Wt3,2),'k.',X(~Wt3,1),X(~Wt3,2),'rx');
drawnow;
axis manual
clickableMultiLegend(['Retained: ' num2str(sum(Wt3))],['Thinned:   ' num2str(sum(~Wt3))]);
title('"comp2one" thinning on the fishery dataset');
close all
save tempfileWS