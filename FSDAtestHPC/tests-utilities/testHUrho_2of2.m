load tempfileWS
x=-6:0.01:6;
c=1.345;
rhoHU=HUrho(x,c);
plot(x,rhoHU)
xlabel('u','Interpreter','Latex')
ylabel('$\rho (x,1.345)$','Interpreter','Latex')
text(-c,0,'-c')
text(c,0,'c')
title('$\rho (u,c)$ with $c=1,345$ and $c=2$','Interpreter','Latex')
hold('on')
rhoHU=HUrho(x,2);
plot(x,rhoHU,'-.')
close all
save tempfileWS