load tempfileWS
close all;
hs = gscatter(1:numel(y),y,groups);
hfs = gcf;                              % get the handle of the scatterplot
has = get(hfs,'CurrentAxes');           % it is the same as has = gca
hlegends  = get(has,'Children');        % get the legend entries
getleg = get(hlegends,'DisplayName');   % get the names of the legend entries
getcol = get(hlegends,'Color');         % get the color of the legend entries
getcolm = cell2mat(getcol);             % arrange the RGB vectors into a matrix
figure;
[ng, hb] = histFS(y,nbins,groups,getleg,gca,getcolm);
title('Color sequence is taken from the scatterplot','interpreter','latex','FontSize',18);
close all
save tempfileWS