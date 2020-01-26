load tempfileWS
close all
y=(-2:0.1:2)';
n=length(y);
la=-1:1:3;
nla=length(la);
YtraYJ=zeros(n,nla);
YtraBC=nan(n,nla);
posy=y>0;
for j=1:nla
YtraYJ(:,j)=normYJ(y,1,la(j),'Jacobian',false);
YtraBC(posy,j)=normBoxCox(y(posy),1,la(j),'Jacobian',false);
end
subplot(1,2,1)
plot(y,YtraYJ)
for j=1:nla
text(y(1), YtraYJ(1,j),['\lambda=' num2str(la(j))])
end
xlabel('Original values')
ylabel('Transformed values')
title('Yeo-Johnson transformation')
subplot(1,2,2)
plot(y,YtraBC)
xlim([y(1) y(end)])
for j=1:nla
text(y(16), YtraBC(22,j),['\lambda=' num2str(la(j))])
end
xlabel('Original values')
ylabel('Transformed values')
title('Box-Cox transformation')
close all
save tempfileWS