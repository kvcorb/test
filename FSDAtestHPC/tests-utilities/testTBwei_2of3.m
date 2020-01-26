load tempfileWS
FontSize=14;
x=-6:0.01:6;
ylim1=-0.05;
ylim2=1.05;
xlim1=min(x);
xlim2=max(x);
LineWidth=2;
subplot(2,2,1)
ceff095HU=HUeff(0.95,1);
weiHU=HUwei(x,ceff095HU);
plot(x,weiHU,'LineWidth',LineWidth)
xlabel('$u$','Interpreter','Latex','FontSize',FontSize)
title('Huber','FontSize',FontSize)
ylim([ylim1 ylim2])
xlim([xlim1 xlim2])
subplot(2,2,2)
ceff095HA=HAeff(0.95,1);
weiHA=HAwei(x,ceff095HA);
plot(x,weiHA,'LineWidth',LineWidth)
xlabel('$u$','Interpreter','Latex','FontSize',FontSize)
title('Hampel','FontSize',FontSize)
ylim([ylim1 ylim2])
xlim([xlim1 xlim2])
subplot(2,2,3)
ceff095TB=TBeff(0.95,1);
weiTB=TBwei(x,ceff095TB);
plot(x,weiTB,'LineWidth',LineWidth)
xlabel('$u$','Interpreter','Latex','FontSize',FontSize)
title('Tukey biweight','FontSize',FontSize)
ylim([ylim1 ylim2])
xlim([xlim1 xlim2])
subplot(2,2,4)
ceff095HYP=HYPeff(0.95,1);
ktuning=4.5;
weiHYP=HYPwei(x,[ceff095HYP,ktuning]);
plot(x,weiHYP,'LineWidth',LineWidth)
xlabel('$u$','Interpreter','Latex','FontSize',FontSize)
title('Hyperbolic','FontSize',FontSize)
ylim([ylim1 ylim2])
xlim([xlim1 xlim2])
close all
save tempfileWS