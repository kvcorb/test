clear all; close all;
data=[randn(500,2);randn(500,1)+3.5, randn(500,1);];
x = data(:,1);
y = data(:,2);
% Data density
[density,xout,bandwidth]   = kdebiv(data,'pdfmethod','fsda');
xx = xout(:,1);
yy = xout(:,2);
zz = density;
% plot of data and density
figure;
[xq,yq] = meshgrid(xx,yy);
density = griddata(xx,yy,density,xq,yq);
contour3(xq,yq,density,50), hold on
plot(x,y,'r.','MarkerSize',5)
title(['Original data (' num2str(numel(y)) ' units) with density contour'],'FontSize',16);
%Interpolate the density and apply thinning using retention probabilities (1 - pdfe/max(pdfe))
F = TriScatteredInterp(xx(:),yy(:),zz(:));
pdfe = F(x,y);
pretain = 1 - pdfe/max(pdfe);
[Xt , Xti]= rthin([x y],pretain);
% rthin retention probabilities
[psorted ii] = sort(pretain);
figure;
plot(x,y,'r.','MarkerSize',5);
hold on;
plot(x(ii(1:100)),y(ii(1:100)),'bx','MarkerSize',5);
title('The 100 units with smaller retention probabilities','FontSize',16);
% now estimate the density on the retained units
%[tdensity,txout,tbandwidth] = ksdensity(Xt);
[tdensity,txout,tbandwidth]  = kdebiv(Xt,'pdfmethod','fsda');
txx = txout(:,1);
tyy = txout(:,2);
tzz = tdensity;
% and plot the retained units with their density superimposed
figure;
[txq,tyq] = meshgrid(txx,tyy);
tdensity = griddata(txx,tyy,tdensity,txq,tyq);
contour3(txq,tyq,tdensity,50), hold on
plot(x(Xti),y(Xti),'b.','MarkerSize',5);
title(['Retained data (' num2str(numel(y(Xti))) ' units) with new density contour'],'FontSize',16);
cascade;
close all
save tempfileWS