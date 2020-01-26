x=-9:0.1:9;
psiHA=HApsider(x,1);
plot(x,psiHA)
xlabel('x','Interpreter','Latex')
ylabel(' Hampel $\psi''(x) $','Interpreter','Latex')
close all
save tempfileWS