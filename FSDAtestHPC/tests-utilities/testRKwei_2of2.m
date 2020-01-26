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
weiRK030=RKwei(x,c,M);
weiRK030=weiRK030/max(weiRK030);
plot(x,weiRK030,'LineStyle','-','LineWidth',lwd)
% Use bdp=0.4
bdp=0.4;
[c,M]=RKbdp(bdp,v,ARP);
weiRK040=RKwei(x,c,M);
weiRK040=weiRK040/max(weiRK040);
plot(x,weiRK040,'LineStyle','-.','LineWidth',lwd)
% Use bdp=0.5
bdp=0.5;
[c,M]=RKbdp(bdp,v,ARP);
weiRK050=RKwei(x,c,M);
weiRK050=weiRK050/max(weiRK050);
plot(x,weiRK050,'LineStyle','--','LineWidth',lwd)
xlabel('$x$','Interpreter','Latex','FontSize',16)
ylabel('RK. Normalized $w(x,c,M)$','Interpreter','Latex','FontSize',20)
legend({'$bdp=0.3$', '$bdp=0.4$' '$bdp=0.5$'},'Interpreter','Latex','Location','SouthEast','FontSize',16)
close all
save tempfileWS