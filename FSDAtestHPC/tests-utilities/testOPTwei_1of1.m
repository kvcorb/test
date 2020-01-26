x=-6:0.1:6;
weiOPT=OPTwei(x,2);
plot(x,weiOPT)
xlabel('x','Interpreter','Latex')
ylabel('$W (x) =\psi(x)/x$','Interpreter','Latex')
close all
save tempfileWS