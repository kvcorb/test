load tempfileWS
myleg = {'my group 1' 'my group 2' 'my group 3' 'my group 4' };
[ng, hb] = histFS(y,nbins,groups,myleg);
title('Example with personalised clickable legends','interpreter','latex','FontSize',18);
close all
save tempfileWS