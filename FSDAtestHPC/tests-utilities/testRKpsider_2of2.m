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
psiderRK030=RKpsider(x,c,M);
plot(x,psiderRK030,'LineStyle','-','LineWidth',lwd)
% Use bdp=0.4
bdp=0.4;
[c,M]=RKbdp(bdp,v,ARP);
psiderRK040=RKpsider(x,c,M);
plot(x,psiderRK040,'LineStyle','-.','LineWidth',lwd)
% Use bdp=0.5
bdp=0.5;
[c,M]=RKbdp(bdp,v,ARP);
psiderRK050=RKpsider(x,c,M);
plot(x,psiderRK050,'LineStyle','--','LineWidth',lwd)
xlabel('$x$','Interpreter','Latex','FontSize',16)
ylabel('RK. Normalized $\psi''(x,c,M)$','Interpreter','Latex','FontSize',20)
legend({'$bdp=0.3$', '$bdp=0.4$' '$bdp=0.5$'},'Interpreter','Latex','Location','SouthEast','FontSize',16)
close all
save tempfileWS