load tempfileWS
% The superimposed normal kernel density is for illustration: 
% a more precise density can be simulated with function vervaatxdf.
close all
clear all;
close all;
betav10 = 10;
betav01 = 1;
N = 5000;
y10 = vervaatrnd(betav10,N);
y01 = vervaatrnd(betav01,N);
pdy10 = fitdist(y10(:),'Kernel','Kernel','normal','Support','positive');
x10   = (1:N)*(5*betav10)/N;
pdf10 = pdf(pdy10,x10);
pdy01 = fitdist(y01(:),'Kernel','Kernel','normal','Support','positive');
x01   = (1:N)*(5*betav01)/N;
pdf01 = pdf(pdy01,x01);
figure;
h1=subplot(2,1,1);
plot(x10,pdf10,'-','LineWidth',2); ylim([0,1]);
if ~verLessThan('matlab','1.7.0')
hold on
h=histogram(y10);
h.Normalization='pdf';
h.BinWidth=0.02;
h.EdgeColor='none'; 
hold off
end
h2=subplot(2,1,2);
plot(x01,pdf01,'-','LineWidth',2); ylim([0,1]);
if ~verLessThan('matlab','1.7.0')
hold on
h=histogram(y01);
h.Normalization='pdf';
h.BinWidth=0.02;
h.EdgeColor='none'; 
hold off
end
title(h1,'$$\beta = 10$$' ,'Fontsize',20,'interpreter','latex');
title(h2,'$$\beta = 1 $$ (Dickman)'  ,'Fontsize',20,'interpreter','latex');
close all
save tempfileWS