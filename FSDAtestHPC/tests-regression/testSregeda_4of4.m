load tempfileWS
load('stars');
X=stars.data(:,1);
y=stars.data(:,2);
[out]=Sregeda(y,X,'rhofunc','bisquare');
standard.Color={'b'}
standard.xvalues=size(out.RES,1)-size(out.RES,2)+1:size(out.RES,1)
fground.Color={'r'}
resfwdplot(out,'standard',standard,'fground',fground)
ylabel('Scaled S residuals'); 
RHO = [];
for i=1:49
RHO(i,1) = corr(out.RES(:,i),out.RES(:,i+1),'type','Spearman');
RHO(i,2) = corr(out.RES(:,i),out.RES(:,i+1),'type','Kendall');
RHO(i,3) = corr(out.RES(:,i),out.RES(:,i+1),'type','Pearson');
end
minc = min(RHO);
maxc = max(RHO);
ylimits = [min(minc)*0.8,max(maxc)*1.1];
figure;
subplot(3,1,1);
plot(out.bdp(1:49),RHO(:,1)');
if strcmp(out.class,'Sregeda')
set(gca,'XDir','reverse','ylim',ylimits);
title('Spearman');
end
subplot(3,1,2);
plot(out.bdp(1:49),RHO(:,2)');
if strcmp(out.class,'Sregeda')
set(gca,'XDir','reverse','ylim',ylimits);
title('Kendall');
end
subplot(3,1,3);
plot(out.bdp(1:49),RHO(:,3)');
if strcmp(out.class,'Sregeda')
set(gca,'XDir','reverse','ylim',ylimits);
title('Pearson');
end
close all
save tempfileWS