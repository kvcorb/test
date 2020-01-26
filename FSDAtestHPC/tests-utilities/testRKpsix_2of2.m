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
psixRK030=RKpsix(x,c,M);
psixRK030=psixRK030/max(psixRK030);
plot(x,psixRK030,'LineStyle','-','LineWidth',lwd)
% Use bdp=0.4
bdp=0.4;
[c,M]=RKbdp(bdp,v,ARP);
psixRK040=RKpsix(x,c,M);
psixRK040=psixRK040/max(psixRK040);
plot(x,psixRK040,'LineStyle','-.','LineWidth',lwd)
% Use bdp=0.5
bdp=0.5;
[c,M]=RKbdp(bdp,v,ARP);
psixRK050=RKpsix(x,c,M);
psixRK050=psixRK050/max(psixRK050);
plot(x,psixRK050,'LineStyle','--','LineWidth',lwd)
xlabel('$x$','Interpreter','Latex','FontSize',16)
ylabel('RK. Normalized $x \psi(x,c,M)$','Interpreter','Latex','FontSize',20)
legend({'$bdp=0.3$', '$bdp=0.4$' '$bdp=0.5$'},'Interpreter','Latex','Location','SouthEast','FontSize',16)
close all
save tempfileWS