load tempfileWS
close all
X=load('stars.txt');
plots=struct;
plots.InnerColor=[0 0 0]+1; % remove the color for the hinge
plots.OuterColor=[0 0 0]+1; % remove the color for the fence
plots.labeladd=0; % do not include the labels for the outliers
plots.xlim=[min(X(:,1)) max(X(:,1))];  % tight xlim
plots.ylim=[min(X(:,2)) max(X(:,2))];  % tight ylim
out=boxplotb(X,'strictlyinside',1,'plots',plots);
xlabel('Log effective surface temperature')
ylabel('Log light intensity')
close all
save tempfileWS