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
rhoRK030=RKrho(x,c,M);
rhoRK030=rhoRK030/max(rhoRK030);
plot(x,rhoRK030,'LineStyle','-','LineWidth',lwd)
% Use bdp=0.4
bdp=0.4;
[c,M]=RKbdp(bdp,v,ARP);
rhoRK040=RKrho(x,c,M);
rhoRK040=rhoRK040/max(rhoRK040);
plot(x,rhoRK040,'LineStyle','-.','LineWidth',lwd)
% Use bdp=0.5
bdp=0.5;
[c,M]=RKbdp(bdp,v,ARP);
rhoRK050=RKrho(x,c,M);
rhoRK050=rhoRK050/max(rhoRK050);
plot(x,rhoRK050,'LineStyle','--','LineWidth',lwd)
xlabel('$x$','Interpreter','Latex','FontSize',16)
ylabel('RK. Normalized $\rho(x,c,M)$','Interpreter','Latex','FontSize',20)
legend({'$bdp=0.3$', '$bdp=0.4$' '$bdp=0.5$'},'Interpreter','Latex','Location','SouthEast','FontSize',16)
close all
save tempfileWS