x=-6:0.01:6;
weiHU=HUwei(x,2);
plot(x,weiHU)
xlabel('x','Interpreter','Latex')
ylabel('$W (x) =\psi(x)/x$','Interpreter','Latex')
close all
save tempfileWS