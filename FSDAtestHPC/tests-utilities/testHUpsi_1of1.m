close all
x=-6:0.01:6;
c=1.345;
psiHU=HUpsi(x,c);
plot(x,psiHU,'LineWidth',2)
xlabel('$u$','Interpreter','Latex')
ylabel('$\psi (u,1.345)$','Interpreter','Latex','FontSize',14)
text(-c,-c,'-c=-1.345')
text(c,c+0.1,'c=1.345')
hold('on')
stem(c,c,'LineStyle',':','LineWidth',2)
stem(-c,-c,'LineStyle',':','LineWidth',2)
close all
save tempfileWS