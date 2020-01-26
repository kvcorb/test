load tempfileWS
figure;
[ng, hb] = histFS(y,nbins,groups,{'BMW','FIAT','VOLVO','FERRARI'});
title('The same, with personalized legends','interpreter','latex','FontSize',18);
close all
save tempfileWS