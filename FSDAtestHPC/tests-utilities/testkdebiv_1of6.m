X1 = [0+.5*randn(150,1)   5+2.5*randn(150,1)];
X2 = [1.75+.25*randn(60,1) 8.75+1.25*randn(60,1)];
X = [X1 ; X2];
% A filled contour plot obtained using colormap 'cmap' = 'summer'.
[F1,Xi,bw] = kdebiv(X,'contourtype','contourf','cmap','summer');
title('A filled contour plot obtained using colormap ''summer''');
hold on
plot(X(:,1),X(:,2),'rx')
close all
save tempfileWS