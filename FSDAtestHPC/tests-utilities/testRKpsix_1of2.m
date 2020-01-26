close all
% Find the values of c and M given bdp=0.4 and v=5 for ARP=0.01
x=0:0.01:5;
bdp=0.4;
v=5;
ARP=0.01;
[c,M]=RKbdp(bdp,v,ARP);
psixRK=RKpsix(x,c,M);
% psixRK=psixRK/max(psiRK);
plot(x,psixRK,'LineWidth',2)
xlabel('$u$','Interpreter','Latex')
ylabel('$u\psi (u,c,M)$','Interpreter','Latex')
title('$u \psi (u,c,M)$','Interpreter','Latex')
hold('on')
stem(M,M^2,'LineStyle',':','LineWidth',1)
text(M,0,'M')
stem(M+c,0,'LineStyle',':','LineWidth',1)
text(M+c,0,'M+c')
close all
save tempfileWS