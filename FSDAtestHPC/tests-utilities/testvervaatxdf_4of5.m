load tempfileWS
clear all; close all;
betav10 = 10;
betav01 = 1;
N = 10000;
[f10 F10 x10] = vervaatxdf(betav10,N);
[f01 F01 x01] = vervaatxdf(betav01,N);
%     % remove inf and nan
%     maskinf = not(isinf(F10));
%     masknan = not(isnan(F10));
%     mask = and(maskinf,masknan);
%     x10 = x10(mask); F10 = F10(mask); f10 = f10(mask); 
%     maskinf = not(isinf(F01));
%     masknan = not(isnan(F01));
%     mask = and(maskinf,masknan);
%     x01 = x01(mask); F01 = F01(mask); f01 = f01(mask);
figure;
h1=subplot(2,1,1);
plot(x10,f10,'.b','LineWidth',2); ylim([0,1]);
hold on
plot(x10,F10,'.r','LineWidth',2); ylim([0,1]);
legend('pdf','cdf');
h2=subplot(2,1,2);
plot(x01,f01,'.b','LineWidth',2); ylim([0,1]);
hold on
plot(x01,F01,'.r','LineWidth',2); ylim([0,1]);
legend('pdf','cdf');
title(h1,'$$\beta = 10$$' ,'Fontsize',20,'interpreter','latex');
title(h2,'$$\beta = 1 $$ (Dickman)' ,'Fontsize',20,'interpreter','latex');
close all
save tempfileWS