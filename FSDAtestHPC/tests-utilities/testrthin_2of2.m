load tempfileWS
clear all; close all;
load('fishery.txt');
fishery = fishery + 10^(-8) * abs(randn(677,2));
x = fishery(:,1);
y = fishery(:,2);
% Data density
[density,xout,bandwidth]   = kdebiv(fishery,'pdfmethod','fsda');
xx = xout(:,1);
yy = xout(:,2);
zz = density;
% plot of data and density
figure;
[xq,yq] = meshgrid(xx,yy);
density = griddata(xx,yy,density,xq,yq);
contour3(xq,yq,density,50), hold on
plot(x,y,'r.','MarkerSize',8)
xlim([0 300]); ylim([0 2000]);
set(gca,'CameraPosition',[-216 -12425 0.0135]);
title({['Zoom on fishery data (' num2str(numel(y)) ' units) with density contour'] , 'Probability mass concentrated close to the origin'},'FontSize',16);
%Interpolate the density and apply thinning using retention
%probabilities equal to 1 - pdfe/max(pdfe)
F = TriScatteredInterp(xx(:),yy(:),zz(:));
pdfe = F(x,y);
pretain = 1 - pdfe/max(pdfe);
[Xt , Xti]= rthin([x y],pretain);
% now estimate the density on the retained units
[tdensity,txout,tbandwidth]  = kdebiv(Xt,'pdfmethod','fsda');
txx = txout(:,1);
tyy = txout(:,2);
tzz = tdensity;
% and plot the retained units with their density superimposed
figure;
[txq,tyq] = meshgrid(txx,tyy);
tdensity = griddata(txx,tyy,tdensity,txq,tyq);
contour3(txq,tyq,tdensity,50), hold on
plot(x(Xti),y(Xti),'b.','MarkerSize',8);
xlim([0 300]); ylim([0 2000]);
set(gca,'CameraPosition',[-216 -12425 0.0002558 ]);
title({['Zoom on retained on the fishery data (' num2str(numel(y(Xti))) ' units) with density contour'] , 'Probabiity mass is smoother'},'FontSize',16);
cascade;
close all
save tempfileWS