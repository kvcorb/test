load tempfileWS
seqi=0.1:0.1:0.5;
eff=[seqi' zeros(length(seqi),4)];
iter=0;
k=4;
for i=seqi
[c,A,B,d] = HYPbdp(i,1,k);
iter=iter+1;
eff(iter,2:5)=[B^2/A A B d];
end
subplot(2,2,1)
plot(eff(:,1),eff(:,2))
title('efficiency')
subplot(2,2,2)
plot(eff(:,1),eff(:,3))
title('A')
subplot(2,2,3)
plot(eff(:,1),eff(:,4))
title('B')
subplot(2,2,4)
plot(eff(:,1),eff(:,5))
title('d')
close all
save tempfileWS