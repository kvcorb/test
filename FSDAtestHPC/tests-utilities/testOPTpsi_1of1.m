x=-6:0.01:6;
psiOPT=OPTpsi(x,1.2);
plot(x,psiOPT)
xlabel('x','Interpreter','Latex')
ylabel('$\psi (x)$','Interpreter','Latex')
close all
save tempfileWS