load tempfileWS
figure;
F2 = kdebiv(X,'cmap','hot');
title('A standard (not filled) contour plot obtained using colormap ''hot''');
% A filled contour plot with personalized colormap: note the last
% line of cmap (1 1 1), which is added to obtain a white background
% in the low densit areas.
figure;
% Data points, with associated clickable legends.
plot(X1(:,1),X1(:,2),'xr' , X2(:,1),X2(:,2),'oc');
clickableMultiLegend('group 1','group 2');
% superimpose the contour plot
hold on;
cmap =   [0, 0, 0.3 ; 0, 0, 0.4 ;  0, 0, 0.5 ; 0, 0, 0.6 ;  0, 0, 0.8 ; 0, 0, 1.0 ; 1, 1, 1 ];
F3 = kdebiv(X,'cmap',cmap);
title('A filled contour plot with personalized colormap and data point superimposed');
% just to position the figures in "cascade".
cascade;
close all
save tempfileWS