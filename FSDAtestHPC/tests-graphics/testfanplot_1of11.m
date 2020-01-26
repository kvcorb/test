XX=load('wool.txt');
y=XX(:,end);
X=XX(:,1:end-1);
% FSRfan and fanplot with all default options
[out]=FSRfan(y,X);
fanplot(out);
close all
save tempfileWS