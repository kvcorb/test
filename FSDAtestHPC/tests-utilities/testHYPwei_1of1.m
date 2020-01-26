x=-6:0.01:6;
ctuning=4;
ktuning=4.5;
weiHYP=HYPwei(x,[ctuning,ktuning]);
plot(x,weiHYP)
xlabel('x','Interpreter','Latex')
ylabel('$W (x) =\psi(x)/x$','Interpreter','Latex')
close all
save tempfileWS