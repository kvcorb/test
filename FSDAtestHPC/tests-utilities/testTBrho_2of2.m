load tempfileWS
close all
x=-6:0.01:6;
lwd=2;
hold('on')
c=TBbdp(0.5,1);
rhoTB=TBrho(x,c);
rhoTB=rhoTB/max(rhoTB);
plot(x,rhoTB,'LineStyle','-','LineWidth',lwd)
c=TBeff(0.95,1);
rhoTB=TBrho(x,c);
rhoTB=rhoTB/max(rhoTB);
plot(x,rhoTB,'LineStyle','-.','LineWidth',lwd)
xlabel('$x$','Interpreter','Latex','FontSize',16)
ylabel('TB. Normalized $\rho_c(x)$','Interpreter','Latex','FontSize',20)
legend({'$c_{(bdp=0.5 \mapsto eff=0.29)}$', '$c_{(eff=0.95 \mapsto bdp=0.12)}$'},'Interpreter','Latex','Location','SouthEast','FontSize',16)
close all
save tempfileWS