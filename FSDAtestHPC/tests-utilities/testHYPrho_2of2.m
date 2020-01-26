load tempfileWS
c=2.158325031399727
k=4;
A=0.000162707412432;
B=0.006991738279441   
d=0.016982948780061
x=-8:0.001:8;
rhoHYP=HYPrho(x,[c,k,A,B,d]);
plot(x,rhoHYP)
xlabel('x','Interpreter','Latex')
ylabel(' Hyperbolic $\rho(x) $','Interpreter','Latex')
close all
save tempfileWS