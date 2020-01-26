load tempfileWS
close all
x=-6:0.01:6;
lwd=2;
hold('on')
c=TBbdp(0.5,1);
rhoTB=TBwei(x,c);
plot(x,rhoTB,'LineStyle','-','LineWidth',lwd)
c=TBeff(0.95,1);
rhoTB=TBwei(x,c);
plot(x,rhoTB,'LineStyle','-.','LineWidth',lwd)
xlabel('$x$','Interpreter','Latex','FontSize',16)
ylabel('TB weight function $\psi_c(x)/x$','Interpreter','Latex','FontSize',20)
close all
save tempfileWS