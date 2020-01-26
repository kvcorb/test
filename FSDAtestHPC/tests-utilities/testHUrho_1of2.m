close all
x=-3:0.001:3;
c=1.345;
rhoHU=HUrho(x,c);
plot(x,rhoHU,'LineStyle','-','LineWidth',2)
xlabel('$u$','Interpreter','Latex')
ylabel('$\rho (u,1.345)$','Interpreter','Latex')
text(-c,0,'-c=-1.345')
text(c,0,'c=1.345')
hold('on')
plot(x,x.^2/2,'LineStyle',':','LineWidth',1.5)
stem(c,c^2/2)
stem(-c,c^2/2)
close all
save tempfileWS