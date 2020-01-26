close all
% Find the values of c and M given bdp=0.4 and v=5 for ARP=0.01
x=0:0.01:5;
bdp=0.4;
v=5;
ARP=0.01;
[c,M]=RKbdp(bdp,v,ARP);
rhoRK=RKrho(x,c,M);
% rhoRK=rhoRK/max(rhoRK);
plot(x,rhoRK,'LineWidth',2)
xlabel('$u$','Interpreter','Latex')
ylabel('$\rho (u,c,M)$','Interpreter','Latex')
title('$\rho (u,c,M)$','Interpreter','Latex')
hold('on')
stem(M,M^2/2,'LineStyle',':','LineWidth',1)
text(M,0,'M')
stem(M+c,M^2/2+c*(5*c+16*M)/30,'LineStyle',':','LineWidth',1)
text(M+c,0,'M+c')
close all
save tempfileWS