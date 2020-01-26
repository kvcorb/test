load tempfileWS
figure
subplot(3,2,1);
plot((1:10).^2)
subplot(3,2,3);
plot((1:10).^2)
subplot(3,2,5);
plot((1:10).^2)
possuperaxes=[0.1 0.1 0.35 0.8];
text={'Population growth','3 countries'} ;
suplabel(text,'y',possuperaxes)
close all
save tempfileWS