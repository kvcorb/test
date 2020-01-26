% Plot of derivative of hyperbolic psi function.
x=-9:0.1:9;
ctuning=6;
ktuning=4.5;
psiHYPder=HYPpsider(x,[ctuning,ktuning]);
plot(x,psiHYPder)
xlabel('x','Interpreter','Latex')
ylabel(' Hyperbolic $\psi''(x) $','Interpreter','Latex')
close all
save tempfileWS