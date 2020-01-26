load tempfileWS
figure
subplot(3,2,1);
plot((1:10).^2)
subplot(3,2,3);
plot((1:10).^2)
subplot(3,2,5);
plot((1:10).^2)
possuperaxes=[0.1 0.1 0.35 0.8];
suplabel('Population growth','y',possuperaxes)
suplabel('Right label','yy',possuperaxes)
suplabel('Years','x',possuperaxes)
% The three panels of the right have a common xlabel, ylabel and
% right ylabel
subplot(3,2,2);
plot((1:10).^2)
subplot(3,2,4);
plot((1:10).^2)
subplot(3,2,6);
plot((1:10).^2)
possuperaxes=[0.55 0.1 0.3 0.8];
suplabel('Population growth 2','y',possuperaxes)
suplabel('Right label','yy',possuperaxes)
suplabel('Months','x',possuperaxes)
close all
save tempfileWS