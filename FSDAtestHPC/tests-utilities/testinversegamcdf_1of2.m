x=(0:0.001:3)';
a=[1,2,3,3];
b=[1,1,1,0.5];
Y=zeros(length(x),length(a));
for i=1:length(x)
Y(i,:)=inversegamcdf(x(i),a,b);
end
for j=1:4
subplot(2,2,j)
plot(x,Y(:,j))
title(['CDF with a=' num2str(a(j)) ' b=' num2str(b(j))])
xlabel('x')
end
close all
save tempfileWS