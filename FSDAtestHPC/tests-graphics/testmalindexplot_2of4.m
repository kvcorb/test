load tempfileWS
load('stack_loss.txt');
X=stack_loss(:,1:3);
[n,v]=size(X);
% Define confidence level
conflev=[0.95,0.99];
figure;
h1=subplot(2,1,1);
% Compute traditional Mahalanobis distances
mdtrad=mahal(X,X);
malindexplot(mdtrad,v,'h',h1,'conflev',conflev,'labx','Index number','laby','Traditional md');
% Compute robust md
[out]=FSM(X,'init',5,'plots',0);
seq=1:size(X,1);
good=setdiff(seq,out.outliers);
mdrob=mahal(X,X(good,:));
h2=subplot(2,1,2);
malindexplot(mdrob,v,'h',h2,'conflev',conflev,'labx','Index number','laby','Robust md','title','');
close all
save tempfileWS