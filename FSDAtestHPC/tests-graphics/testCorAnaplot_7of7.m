load tempfileWS
load smoke
X=smoke.data;
[N,~,~,labels]=crosstab(X(:,1),X(:,2));
[I,J]=size(N);
labels_rows=labels(1:I,1);
labels_columns=labels(1:J,2);
out=CorAna(N,'Lr',labels_rows,'Lc',labels_columns,'plots',0,'dispresults',false);
plots=struct;
plots.alpha='rowgab';
plots.alpha='colgab';
plots.alpha='rowgreen';
plots.alpha='colgreen';
% Add confidence ellipses
confellipse=1;
plots.alpha='bothprincipal';
plots.alpha='rowprincipal';
plots.alpha='colprincipal';
h1=subplot(1,2,1);
CorAnaplot(out,'plots',plots,'confellipse',confellipse,'h',h1)
h2=subplot(1,2,2);
plots.alpha=0;
CorAnaplot(out,'plots',plots,'confellipse',confellipse,'h',h2);
close all
save tempfileWS