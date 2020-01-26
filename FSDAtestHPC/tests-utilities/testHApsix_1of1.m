x=-9:0.1:9;
psiHAx=HApsix(x,1);
plot(x,psiHAx)
xlabel('x','Interpreter','Latex')
ylabel(' Hampel $\psi(x) \times x $','Interpreter','Latex')
close all
save tempfileWS