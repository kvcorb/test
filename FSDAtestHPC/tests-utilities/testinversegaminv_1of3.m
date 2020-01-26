x=(0:0.0001:0.9999)';
a=[1,2,3,50,100,10000];
b=[1,10,100,0.05,10,800];
Y=zeros(length(x),length(a));
Ychk=Y;
for i=1:length(x)
Y(i,:)=inversegaminv(x(i),a,b);
Ychk(i,:)=inversegaminv(x(i),a,b,1);
end
disp('Maximum absolute difference is:');
disp(max(max(abs(Y-Ychk))));
close all
save tempfileWS