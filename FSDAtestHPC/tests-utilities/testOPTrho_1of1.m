x=-6:0.01:6;
rhoOPT=OPTrho(x,2);
plot(x,rhoOPT)
xlabel('x','Interpreter','Latex')
ylabel('$\rho (x)$','Interpreter','Latex')
close all
save tempfileWS