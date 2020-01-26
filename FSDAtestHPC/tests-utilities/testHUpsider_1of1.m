x=-6:0.01:6;
psiHUder=HUpsider(x,2);
plot(x,psiHUder)
xlabel('x','Interpreter','Latex')
ylabel('$\psi''(x)$','Interpreter','Latex')
close all
save tempfileWS