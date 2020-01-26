% The dataset presents two parallel components without contamination.
X  = load('X.txt');
y1 = X(:,end);
X1 = X(:,1:end-1);
out = tclustregIC(y1,X1);
tclustICplot(out,'whichIC','MIXMIX')
close all
save tempfileWS