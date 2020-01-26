x=-6:0.01:6;
psixTB=TBpsix(x,2);
plot(x,psixTB)
xlabel('x','Interpreter','Latex')
ylabel('$\psi (x)$','Interpreter','Latex')
close all
save tempfileWS