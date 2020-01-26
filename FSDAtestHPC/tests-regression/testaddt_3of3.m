load tempfileWS
load('multiple_regression.txt');
y=multiple_regression(:,4);
X=multiple_regression(:,1:3);
[out]=addt(y,X(:,2:3),X(:,1),'plots',1,'units',[9 21 30 31 38 47]','textlab','y');
close all
save tempfileWS