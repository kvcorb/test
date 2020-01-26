load tempfileWS
figure;
[ng, hb] = histFS(y,nbins,groups,{'BMW','FIAT','VOLVO','FERRARI'},gca,'kgbr');
title('FERRARI must be red! Color sequence changed to kgbr','interpreter','latex','FontSize',18);
close all
save tempfileWS