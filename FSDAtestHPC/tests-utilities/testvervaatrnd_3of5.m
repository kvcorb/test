load tempfileWS
% The superimposed normal kernel density is just for illustration: 
% a more precise density can be simulated with function vervaatxdf.
clear all;
close all
betav = 1;
N = 5000;
y1 = vervaatrnd(betav,N,1);
y2 = vervaatrnd(betav,N,2);
x    = (1:N)*(5*betav)/N;
pd1  = fitdist(y1(:),'Kernel','Kernel','normal','Support','positive');
pdf1 = pdf(pd1,x);
pd2  = fitdist(y2(:),'Kernel','Kernel','normal','Support','positive');
pdf2 = pdf(pd2,x);
figure;
h1 = subplot(2,1,1);
p1h = plot(x,pdf1,'.','LineWidth',2); ylim([0,1]);
if ~verLessThan('matlab','1.7.0')
hold on
h=histogram(y1);
h.Normalization='pdf';
h.BinWidth=0.02;
h.EdgeColor='none'; 
hold off
end
h2 = subplot(2,1,2);
plot(x,pdf2,'.','LineWidth',2); ylim([0,1]);
if ~verLessThan('matlab','1.7.0')
hold on
h=histogram(y2);
h.Normalization='pdf';
h.BinWidth=0.02;
h.EdgeColor='none'; 
hold off
end
title(h1,'Dickman ($$\beta = 1 $$) values, from Barabesi-Pratelli' ,'Fontsize',20,'interpreter','latex');
title(h2,'Dickman ($$\beta = 1 $$) values, from Cloud-Huber'       ,'Fontsize',20,'interpreter','latex');
close all
save tempfileWS