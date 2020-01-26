load tempfileWS
close all
x=-9:0.1:9;
ctuning=6;
ktuning=5;
psiHYP=HYPpsi(x,[ctuning,ktuning]);
plot(x,psiHYP,'color','b')
text(6,1.5,['k=' num2str(ktuning)],'Color','b','FontSize',14)
xlabel('$u$','Interpreter','Latex','FontSize',14)
ylabel(' Hyperbolic $\psi(u,c=6,k) $','Interpreter','Latex','FontSize',14)
text(ctuning,-0.1,'c','FontSize',14)
text(-ctuning,0.1,'-c','FontSize',14)
hold('on')
ktuning=4;
psiHYP=HYPpsi(x,[ctuning,ktuning]);
plot(x,psiHYP,'color','k')
text(2,1.3,['k=' num2str(ktuning)],'Color','k','FontSize',14)
close all
save tempfileWS