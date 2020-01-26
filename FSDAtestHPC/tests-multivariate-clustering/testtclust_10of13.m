load tempfileWS
Y=load('geyser2.txt');
maxk=6;
CLACLA=[(1:maxk)' zeros(maxk,1)];
for j=1:maxk
out=tclust(Y,j,0.1,5,'msg',0);
CLACLA(j,2)=out.CLACLA;
end
MIXCLA=[(1:maxk)' zeros(maxk,1)];
MIXMIX=MIXCLA;
for j=1:maxk
out=tclust(Y,j,0.1,5,'mixt',2,'msg',0);
MIXMIX(j,2)=out.MIXMIX;
MIXCLA(j,2)=out.MIXCLA;
end
subplot(1,3,1)
plot(CLACLA(:,1),CLACLA(:,2))
xlim([1 maxk])
xlabel('Number of groups')
ylabel('CLACLA')
subplot(1,3,2)
plot(MIXMIX(:,1),MIXMIX(:,2))
xlabel('Number of groups')
ylabel('MIXMIX')
xlim([1 maxk])
subplot(1,3,3)
plot(MIXCLA(:,1),MIXCLA(:,2))
xlabel('Number of groups')
ylabel('MIXCLA (ICL)')
xlim([1 maxk])
close all
save tempfileWS