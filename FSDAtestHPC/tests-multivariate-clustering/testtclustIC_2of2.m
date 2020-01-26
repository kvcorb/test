load tempfileWS
restrfact=5;
rng('default') % Reinitialize the random number generator to its startup configuration
rng(20000);
ktrue=3;
% n = number of observations
n=150;
% v= number of dimensions
v=2;
% Imposed average overlap
BarOmega=0.04;
out=MixSim(ktrue,v,'BarOmega',BarOmega, 'restrfactor',restrfact);
% data generation given centroids and cov matrices
[Y,id]=simdataset(n, out.Pi, out.Mu, out.S);
% Automatic choice of k
out=tclustIC(Y,'cleanpool',false,'plots',1,'nsamp',100);
% Plot of MIXMIX as function of c given k.
figure('units','normalized','outerposition',[0 0 1 1])
% Specify whether to use the same y scale for ALL plots
samescale=1;
kk=out.kk;
cc=out.cc;
lcc=length(cc);
IC=out.MIXMIX;
miny=min(min(IC));
maxy=max(max(IC));
seqcc=1:lcc;
for j=kk
subplot(1,length(kk),j)
hold('on')
plot(1:lcc,IC(j,:),'k')
[minICj,minICjind]=min(IC(j,:));
plot(seqcc(minICjind),minICj,'rs','MarkerSize',10)
xlim([1 length(cc)])
if samescale==1
ylim([miny maxy])
end
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),lcc))
set(gca,'XTickLabel',num2str(cc'))
xlabel('Restr. fact. $c$','Interpreter','Latex')
title(['k=' num2str(j)])
end
suplabel('BIC (MIXMIX)','t')
close all
save tempfileWS