close all
x=-6:0.01:6;
rhoTB=TBrho(x,2);
plot(x,rhoTB,'LineWidth',2)
xlabel('$u$','Interpreter','Latex')
ylabel('$\rho (u,2)$','Interpreter','Latex')
text(x(1)-0.8,rhoTB(1),'c^2/6')
text(x(end)+0.2,rhoTB(end),'c^2/6')
title('$\rho (u,c)$','Interpreter','Latex')
hold('on')
c=2;
stem(c,c^2/6,'LineStyle',':','LineWidth',1)
stem(-c,c^2/6,'LineStyle',':','LineWidth',1)
close all
save tempfileWS