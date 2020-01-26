% the normal probability density function
npdf = @(x) (exp(-0.5*x.^2)/sqrt(2*pi));
% normal kernel density
nkde = @(x,unidata,h) mean(npdf((x-unidata)/h)/h); % kernel density
% a univariate normal sample
unidata = randn(200,1);
% bandwidth estimation
h = bwe(unidata);
% plot of kernel density with estimated bandwidth
warning('off');
fplot(@(x) nkde(x,unidata,h),[-10,10],'r')
% plot of the true density
hold on
fplot(@(x) (npdf(x)) ,[-10,10],'k')
% plot of the data
plot(unidata,npdf(unidata),'xb')
warning('on');
axis manual;
title(['estimated bandwidth: ' num2str(h) ]);
legend('estimated density','true density','data');
close all
save tempfileWS