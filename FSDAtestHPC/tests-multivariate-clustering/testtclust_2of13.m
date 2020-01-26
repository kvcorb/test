load tempfileWS
Y=load('geyser2.txt');
close all
out=tclust(Y,3,0.1,10000,'plots',1);
title('plot with all default options','interpreter','LaTex','FontSize',18);
% default confidence ellipses.
out=tclust(Y,3,0.1,10000,'plots','ellipse');
title('default confidence ellipses','interpreter','LaTex','FontSize',18);
% confidence ellipses specified by the user
plots.type = 'ellipse';
plots.conflev = 0.5;
out=tclust(Y,3,0.1,10000,'plots',plots);
title('confidence ellipses set to 0.5','interpreter','LaTex','FontSize',18);
plots.conflev = 0.9;
out=tclust(Y,3,0.1,10000,'plots',plots);
title('confidence ellipses set to 0.9','interpreter','LaTex','FontSize',18);
% contour plots.
out=tclust(Y,3,0.1,10000,'plots','contour');
title('contour plot','interpreter','LaTex','FontSize',18);
% filled contour plots with additional options
plots.type = 'contourf';
plots.cmap = autumn;
out=tclust(Y,3,0.1,10000,'plots',plots);
title('contourf plot with autumn colormap','interpreter','LaTex','FontSize',18);
cascade
close all
save tempfileWS