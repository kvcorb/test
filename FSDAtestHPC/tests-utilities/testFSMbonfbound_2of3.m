load tempfileWS
n=2000;
p=15;
init=100;
prob=[0.95 0.99 0.999];
MMDenv = FSMenvmmd(n,p,'init',init,'prob',prob);
Bbound = FSMbonfbound(n,p,'init',init,'prob',prob);
figure;
plot(MMDenv(:,1),MMDenv(:,2:end),'r',Bbound(:,1),Bbound(:,2:end),'b');
close all
save tempfileWS