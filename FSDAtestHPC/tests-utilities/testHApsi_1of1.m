% Plot of psi function.
% Obtain bottom panel of Figure 11.10 p. 375 of
% Hoaglin et al. (1987).
close all
x=-9:0.1:9;
psiHA=HApsi(x,1);
plot(x,psiHA,'LineWidth',2)
xlabel('$u$','Interpreter','Latex','FontSize',14)
ylabel(' Hampel $\psi(u,[2,4,8]) $','Interpreter','Latex')
a=2;
b=4;
c=8;
hold('on')
stem(a,a,'LineWidth',1,'LineStyle',':')
stem(b,a,'LineWidth',1,'LineStyle',':')
stem(-a,-a,'LineWidth',1,'LineStyle',':')
stem(-b,-a,'LineWidth',1,'LineStyle',':')
ax=axis;
ylim([ax(3)-0.1 ax(4)+0.1])
text([a;-a],[-0.1;0.1],{'$a$';'$-a$'},'Interpreter','latex','FontSize',14)
text([b;-b],[-0.1;0.1],{'$b$';'$-b$'},'Interpreter','latex','FontSize',14)
text([c;-c],[-0.1;0.1],{'$c$';'$-c$'},'Interpreter','latex','FontSize',14)
close all
save tempfileWS