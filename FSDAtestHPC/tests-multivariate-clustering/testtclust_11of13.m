load tempfileWS
close all
n1=100;     % Generate 5 groups in 5 dimensions
n2=80;
n3=50;
n4=80;
n5=70;
v=5;
Y1=randn(n1,v)+5;
Y2=randn(n2,v)+3;
Y3=rand(n3,v)-2;
Y4=rand(n4,v)+2;
Y5=rand(n5,v);
group=ones(n1+n2+n3+n4+n5,1);
group(n1+1:n1+n2)=2;
group(n1+n2+1:n1+n2+n3)=3;
group(n1+n2+n3+1:n1+n2+n3+n4)=4;
group(n1+n2+n3+n4+1:n1+n2+n3+n4+n5)=5;
Y=[Y1;Y2;Y3;Y4;Y5];
restrfactor=5;
maxk=7;
CLACLA=[(1:maxk)' zeros(maxk,1)];
for j=1:maxk
out=tclust(Y,j,0.1,restrfactor);
CLACLA(j,2)=out.CLACLA;
end
MIXCLA=[(1:maxk)' zeros(maxk,1)];
MIXMIX=MIXCLA;
for j=1:maxk
out=tclust(Y,j,0.1,restrfactor,'mixt',2);
MIXMIX(j,2)=out.MIXMIX;
MIXCLA(j,2)=out.MIXCLA;
end
subplot(1,3,1)
plot(CLACLA(:,1),CLACLA(:,2))
xlabel('Number of groups')
ylabel('CLACLA')
subplot(1,3,2)
plot(MIXMIX(:,1),MIXMIX(:,2))
xlabel('Number of groups')
ylabel('MIXMIX')
subplot(1,3,3)
plot(MIXCLA(:,1),MIXCLA(:,2))
xlabel('Number of groups')
ylabel('MIXCLA (ICL)')
close all
save tempfileWS