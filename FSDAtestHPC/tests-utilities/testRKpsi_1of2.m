close all
% Find the values of c and M given bdp=0.4 and v=5 for ARP=0.01
x=0:0.01:5;
bdp=0.4;
v=5;
ARP=0.01;
[c,M]=RKbdp(bdp,v,ARP);
psiRK=RKpsi(x,c,M);
% psiRK=psiRK/max(psiRK);
plot(x,psiRK,'LineWidth',2)
xlabel('$u$','Interpreter','Latex')
ylabel('$\psi (u,c,M)$','Interpreter','Latex')
title('$\psi (u,c,M)$','Interpreter','Latex')
hold('on')
stem(M,M,'LineStyle',':','LineWidth',1)
text(M,0,'M')
stem(M+c,0,'LineStyle',':','LineWidth',1)
text(M+c,0,'M+c')
close all
save tempfileWS