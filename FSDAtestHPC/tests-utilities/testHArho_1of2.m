x=-9:0.1:9;
rhoHA=HArho(x,1);
plot(x,rhoHA,'LineWidth',2)
xlabel('$u$','Interpreter','Latex')
ylabel(' Hampel $\rho(u,[2, 4, 8]) $','Interpreter','Latex','FontSize',14)
close all
save tempfileWS