n=1000;
p=5;
init=floor(0.5*(n+p+1))+1; 
MMDenv = FSMenvmmd(n,p,'init',init);
Bbound = FSMbonfbound(n,p,'init',init);
figure;
plot(MMDenv(:,1),MMDenv(:,2:end),'r',Bbound(:,1),Bbound(:,2:end),'b');
close all
save tempfileWS