load tempfileWS
load('wool.txt','wool');
y=wool(:,4);
X=wool(:,1:3);
% The line below shows the plot of mdr
[out]=FSR(y,X,'nsamp',0,'plots',2);
n0=16:19;
quantplo=[0.01 0.5 0.99 0.999 0.9999 0.99999];
ninv=norminv(quantplo);
lwdenv=2;
ij=0;
supn0=max(n0);
for jn0=n0;
ij=ij+1;
MDRinv = FSRinvmdr(out.mdr,4,'n',jn0);
% Resuperimposed envelope in normal coordinates
subplot(2,2,ij)
plot(MDRinv(:,1),norminv(MDRinv(:,2)),'LineWidth',2)
xlim([0 supn0])
v=axis;
line(v(1:2)',[ninv;ninv],'color','g','LineWidth',lwdenv,'LineStyle','--','Tag','env');
text(v(1)*ones(length(quantplo),1),ninv',strcat(num2str(100*quantplo'),'%'));
% line(MDRinv(:,1),norminv(MDRinv(:,2)),'LineWidth',2)
title(['Resuperimposed envelope n=' num2str(jn0)]);
end
close all
save tempfileWS