load tempfileWS
% The dataset presents two parallel components without contamination.
X  = load('X.txt');
y1 = X(:,end);
X1 = X(:,1:end-1);
alpha1 = 0.05;
% Impose classification likelihood and five per cent likelihood trimming
out = tclustregIC(y1,X1,'whichIC','CLACLA','alphaLik',alpha1);
tclustICplot(out,'whichIC','CLACLA')
close all
save tempfileWS