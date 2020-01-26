load tempfileWS
% The superimposed normal kernel density is just for illustration.
% The same for the superimposed cdf, made using FSDA function exactcdf.
clear all; 
close all;
betav10 = 10;
betav01 = 1;
N = 5000;
y10 = zeros(N,1); y01 = y10;
for i=1:N
y10(i) = vervaatsim(betav10);
y01(i) = vervaatsim(betav01);
end
pdy10 = fitdist(y10(:),'Kernel','Kernel','normal','Support','positive');
x10   = (1:N)*(5*betav10)/N;
pdf10 = pdf(pdy10,x10);
pdy01 = fitdist(y01(:),'Kernel','Kernel','normal','Support','positive');
x01   = (1:N)*(5*betav01)/N;
pdf01 = pdf(pdy01,x01);
figure;
h1=subplot(2,1,1);
plot(x10,pdf10,'-','LineWidth',2); ylim([0,1]);
% now superimpose the cdf using function exactcdf
cdf10 = exactcdf(x10,y10);
hold on;
plot(x10,cdf10,'-r','LineWidth',2); ylim([0,1]);
hold off;
% superimpose the histogram
if ~verLessThan('matlab','1.7.0')
hold on
h=histogram(y10);
h.Normalization='pdf';
h.BinWidth=0.02;
h.EdgeColor='none'; 
hold off
end
drawnow;
h2=subplot(2,1,2);
plot(x01,pdf01,'-','LineWidth',2); ylim([0,1]);
% now superimpose the cdf using function exactcdf
cdf01 = exactcdf(x01,y01);
hold on;
plot(x01,cdf01,'-r','LineWidth',2); ylim([0,1]);
hold off;
% superimpose the histogram
if ~verLessThan('matlab','1.7.0')
hold on
h=histogram(y01);
h.Normalization='pdf';
h.BinWidth=0.02;
h.EdgeColor='none'; 
hold off
end
drawnow;
title(h1,'$$\beta = 10$$ with cdf superimposed' ,'Fontsize',20,'interpreter','latex');
title(h2,'$$\beta = 1 $$ (Dickman) with cdf superimposed'  ,'Fontsize',20,'interpreter','latex');
close all
save tempfileWS