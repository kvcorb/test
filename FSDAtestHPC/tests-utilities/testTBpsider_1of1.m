x=-6:0.01:6;
c=1.5476;
psiTBder=TBpsider(x,c);
plot(x,psiTBder)
xlabel('x','Interpreter','Latex')
ylabel('$\psi''(x)$','Interpreter','Latex')
close all
save tempfileWS