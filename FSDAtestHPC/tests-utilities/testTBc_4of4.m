load tempfileWS
c=1:0.01:6;
[bdp,eff]=TBc(c,1);
subplot(2,1,1)
plot(c,bdp)
xlabel('c','Interpreter','Latex','FontSize',16)
ylabel('Breakdown point','Interpreter','none')
subplot(2,1,2)
plot(c,eff)
xlabel('c','Interpreter','Latex','FontSize',16)
ylabel('Asymptotic efficiency','Interpreter','none')
close all
save tempfileWS