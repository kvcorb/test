x=-6:0.01:6;
psiOPTder=OPTpsider(x,1.2);
plot(x,psiOPTder)
xlabel('x','Interpreter','Latex')
ylabel('$\psi''(x)$','Interpreter','Latex')
title('Optimal')
close all
save tempfileWS