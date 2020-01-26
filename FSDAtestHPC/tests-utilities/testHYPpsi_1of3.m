% Plot of hyperbolic psi function.
% Obtain Figure 2 of  p. 645 of HRR.
x=-9:0.1:9;
ctuning=6;
ktuning=4.5;
psiHYP=HYPpsi(x,[ctuning,ktuning]);
plot(x,psiHYP)
xlabel('$u$','Interpreter','Latex')
ylabel(' Hyperbolic $\psi(u,c=6,k=4.5) $','Interpreter','Latex')
text(ctuning,-0.1,'c','FontSize',14)
text(-ctuning,0.1,'-c','FontSize',14)
close all
save tempfileWS