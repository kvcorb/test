x=-8:0.01:8;
weiHA=HAwei(x,[1 2 4 8]);
plot(x,weiHA)
xlabel('x','Interpreter','Latex')
ylabel('$W (x) =\psi(x)/x$','Interpreter','Latex')
close all
save tempfileWS