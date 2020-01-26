load tempfileWS
n=2000;
p=10;
init=100;
prob=[0.99];
MMDenv = FSMenvmmd(n,p,'init',init,'prob',prob);
distrib='chi2';
BboundC = FSMbonfbound(n,p,'init',init,'prob',prob,'distrib',distrib);
distrib='F';
BboundF = FSMbonfbound(n,p,'init',init,'prob',prob,'distrib',distrib);
figure;
plot(MMDenv(:,1),MMDenv(:,2:end),BboundC(:,1),BboundC(:,2:end),BboundF(:,1),BboundF(:,2:end));
legend('Order statistic envelope','Bonferroni Chi2 bound','Bonferroni F bound','Location','best');
close all
save tempfileWS