load tempfileWS
close all
x=0:0.01:6;
% Number of variables v is fixed to 5
v=5;
% ARP is fixed to 0.01
ARP=0.01;
lwd=2;
hold('on')
% Use bdp=0.3
bdp=0.3;
[c,M]=RKbdp(bdp,v,ARP);
psiRK030=RKpsi(x,c,M);
psiRK030=psiRK030/max(psiRK030);
plot(x,psiRK030,'LineStyle','-','LineWidth',lwd)
% Use bdp=0.4
bdp=0.4;
[c,M]=RKbdp(bdp,v,ARP);
psiRK040=RKpsi(x,c,M);
psiRK040=psiRK040/max(psiRK040);
plot(x,psiRK040,'LineStyle','-.','LineWidth',lwd)
% Use bdp=0.5
bdp=0.5;
[c,M]=RKbdp(bdp,v,ARP);
psiRK050=RKpsi(x,c,M);
psiRK050=psiRK050/max(psiRK050);
plot(x,psiRK050,'LineStyle','--','LineWidth',lwd)
xlabel('$x$','Interpreter','Latex','FontSize',16)
ylabel('RK. Normalized $\psi(x,c,M)$','Interpreter','Latex','FontSize',20)
legend({'$bdp=0.3$', '$bdp=0.4$' '$bdp=0.5$'},'Interpreter','Latex','Location','SouthEast','FontSize',16)
close all
save tempfileWS