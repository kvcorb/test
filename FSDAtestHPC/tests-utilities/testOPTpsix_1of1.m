x=-6:0.01:6;
psixOPT=OPTpsix(x,1.2);
plot(x,psixOPT)
xlabel('x','Interpreter','Latex')
ylabel('$\psi (x) \times x$','Interpreter','Latex')
close all
save tempfileWS