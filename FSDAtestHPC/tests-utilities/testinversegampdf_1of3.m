x=(0:0.001:3)';
a=[1,2,3,3];
b=[1,1,1,0.5];
for j=1:4
subplot(2,2,j);
plot(x,inversegampdf(x,a(j),b(j)));
xlabel('x');
title(['PDF with a=' num2str(a(j)) ' b=' num2str(b(j))]);
end
close all
save tempfileWS