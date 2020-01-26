% Plot of rho function for hyperbolic tangent estimator.
x=-8:0.001:8;
ctuning=6;
ktuning=4.5;
rhoHYP=HYPrho(x,[ctuning,ktuning]);
plot(x,rhoHYP)
xlabel('x','Interpreter','Latex')
ylabel(' Hyperbolic $\rho(x) $','Interpreter','Latex')
close all
save tempfileWS