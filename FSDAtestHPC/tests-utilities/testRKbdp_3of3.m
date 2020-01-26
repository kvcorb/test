load tempfileWS
v=10;
bdp=0.01:0.01:0.5;
cM=zeros(length(bdp),2);
for i=1:length(bdp)
[c,M]=RKbdp(bdp(i),v,0.01);
cM(i,:)=[c M];
end
subplot(2,1,1)
plot(bdp,cM(:,1))
subplot(2,1,2)
plot(bdp,cM(:,2))
close all
save tempfileWS