load tempfileWS
load('hospitalFS.txt');
y=hospitalFS(:,5);
X=hospitalFS(:,1:4);
% exploratory analysis through the yXplot
out=FSR(y,X,'nsamp',20000,'plots',2,'lms',0);
n0=[54 58 62 63];
quantplo=[0.01 0.5 0.99 0.999 0.9999 0.99999];
ninv=norminv(quantplo);
lwdenv=2;
supn0=max(n0);
figure;
ij=0;
for jn0=n0;
ij=ij+1;
[MDRinv] = FSRinvmdr(out.mdr,5,'n',jn0);
% Plot for each step of the fwd search the values of mdr translated in
% Plot for each step of the fwd search the values of mdr translated in
% terms of normal quantiles
subplot(2,2,ij)
plot(MDRinv(:,1),norminv(MDRinv(:,2)),'LineWidth',2)
xlim([0 supn0])
v=axis;
line(v(1:2)',[ninv;ninv],'color','g','LineWidth',lwdenv,'LineStyle','--','Tag','env');
text(v(1)*ones(length(quantplo),1),ninv',strcat(num2str(100*quantplo'),'%'));
line(MDRinv(:,1),norminv(MDRinv(:,2)),'LineWidth',2)
title(['Resuperimposed envelope n=' num2str(jn0)]);
end
close all
save tempfileWS