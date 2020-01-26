x=-6:0.01:6;
weiTB=TBwei(x,2);
plot(x,weiTB)
xlabel('x','Interpreter','Latex')
ylabel('$W (x) =\psi(x)/x$','Interpreter','Latex')
close all
save tempfileWS