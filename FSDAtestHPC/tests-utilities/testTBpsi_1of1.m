close all
x=-6:0.01:6;
c=2;
psiTB=TBpsi(x,c);
plot(x,psiTB,'LineWidth',2)
xlabel('$u$','Interpreter','Latex')
ylabel('$\psi(u,2)$','Interpreter','Latex','FontSize',14)
hold('on')
ax=axis;
line([-c;-c],[ax(3);0],'LineStyle',':','LineWidth',1)
line([c;c],[ax(3);0],'LineStyle',':','LineWidth',1)
close all
save tempfileWS