load tempfileWS
n=200;
p=3;
state1=123498;
randn('state', state1);
X=randn(n,p);
y=randn(n,1);
kk=33;
% shift contamination of the first 6 units of the response
y(1:kk)=y(1:kk)+6;
nameX={'age', 'salary', 'position'};
namey='salary';
[out]=FSR(y,X,'nameX',nameX,'namey',namey);
close all
save tempfileWS