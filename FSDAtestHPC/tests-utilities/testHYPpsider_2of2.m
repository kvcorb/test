load tempfileWS
bdp=0.5;
c=TBbdp(bdp,1);
subplot(2,2,1)
% 1st panel is Tukey biweight
x=-4:0.01:4;
psiTBder=TBpsider(x,c);
plot(x,psiTBder)
xlabel('x','Interpreter','Latex')
ylabel('$\psi''(x)$','Interpreter','Latex')
title('Tukey biweight')
subplot(2,2,2)
% 2nd panel is optimal
c=OPTbdp(bdp,1);
c=c/3;
% Remark: in this case it is necessary to multiply by 3.25*c^2 because the
% optimal has been standardized in such a way that sup(rho(x))=1
psiOPTder=(3.25*c^2)*OPTpsider(x,c);
plot(x,psiOPTder)
xlim([-4 4])
xlabel('x','Interpreter','Latex')
ylabel('$\psi''(x)$','Interpreter','Latex')
title('Optimal')
subplot(2,2,3)
% 3rd panel is Hampel
% Obtain bottom panel of Figure 11.10 p. 375 of
% Hoaglin et al. (1987)
c=HAbdp(bdp,1);
psiHA=HApsider(x,c);
plot(x,psiHA)
xlabel('x','Interpreter','Latex')
ylabel('$\psi''(x) $','Interpreter','Latex')
title('Hampel')
subplot(2,2,4)
% 4th panel is hyperbolic
% c=HYPbdp(0.5,1);
%ktuning=4.5;
ktuning=4.5;
% Precalculated values
c = 2.010311082005501;
A = 0.008931591866092;
B = 0.051928487236632;
d=  0.132017481327058;
% Alternatively the values can be found using
%[c,A,B,d]=HYPbdp(0.5,1,ktuning);
psiHYPder=HYPpsider(x,[c,ktuning,A,B,d]);
plot(x,psiHYPder)
xlabel('x','Interpreter','Latex')
ylabel('$\psi''(x) $','Interpreter','Latex')
title('Hyperbolic')
close all
save tempfileWS