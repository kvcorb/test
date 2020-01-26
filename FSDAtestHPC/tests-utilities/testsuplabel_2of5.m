load tempfileWS
figure
subplot(2,1,1);
plot((1:10).^2)
subplot(2,1,2);
plot((1:10).^3)
suplabel('Population growth','y')
close all
save tempfileWS