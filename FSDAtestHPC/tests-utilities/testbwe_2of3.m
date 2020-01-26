load tempfileWS
% the normal probability density function
npdf = @(x) (exp(-0.5*x.^2)/sqrt(2*pi));
% normal kernel density
nkde = @(x,unidata,h) mean(npdf((x-unidata)/h)/h); % kernel density
% mixture of two univariate normal samples
unidata = [randn(100,1)-5 ; randn(100,1)+5];
i=0;
for smfact = 1:3:7
i=i+1;
% bandwidth estimation
h = bwe(unidata) / smfact;
subplot(3,1,i);
% plot of kernel density with estimated bandwidth
warning('off');
fplot(@(x) nkde(x,unidata,h),[-10,10],'r')
% plot of the true density
hold on;
fplot(@(x) (npdf(x-5) + npdf(x+5)),[-10,10],'k')
% plot of the data
plot(unidata,(npdf(unidata-5) + npdf(unidata+5)),'xb')
warning('on');
if i == 1
xlabel(['bw0 = ' num2str(h) ' (estimated from the data)' ]);
else
xlabel(['bw0 / ' num2str(i) ' = ' num2str(h) ]);
end
end
close all
save tempfileWS