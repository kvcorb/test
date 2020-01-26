load tempfileWS
MDRenv = FSRenvmdr(1000,5,'init',10,'prob',[0.01 0.5 0.99 0.999]);
Bbound = FSRbonfbound(1000,5,'init',10,'prob',[0.01 0.5 0.99 0.999]);
plot(MDRenv(:,1),MDRenv(:,2:5),Bbound(:,1),Bbound(:,2:5));
close all
save tempfileWS