load tempfileWS
a=[1,2,3,50,100,10000];
b=[1,10,100,0.05,10,800];
x=(0:0.0001:0.9999)';
Y=zeros(length(x),length(a));
Ychk=Y;
for i=1:length(x)
Y(i,:)=x(i)-inversegamcdf(inversegaminv(x(i),a,b),a,b);
Ychk(i,:)=x(i)-inversegamcdf(inversegaminv(x(i),a,b,1),a,b,1);
end
disp('Maximum deviation from 0 passing through routine gaminv:');
disp(max(max(abs(Y))));
disp('Maximum deviation from 0 using fast routine:');
disp(max(max(abs(Ychk))));
close all
save tempfileWS