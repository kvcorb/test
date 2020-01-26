% plot of psi(x)*x for Hyperbolic estimator.
x=-9:0.1:9;
ctuning=6;
ktuning=4.5;
psiHYPx=HYPpsix(x,[ctuning,ktuning]);
plot(x,psiHYPx)
xlabel('x','Interpreter','Latex')
ylabel('$\psi (x) \times x$','Interpreter','Latex')
close all
save tempfileWS