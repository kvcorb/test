% Plot of psi(x) function multiplied  by x.
x=-6:0.01:6;
psixHU=HUpsix(x,2);
plot(x,psixHU)
xlabel('x','Interpreter','Latex')
ylabel('$\psi (x)$','Interpreter','Latex')
close all
save tempfileWS