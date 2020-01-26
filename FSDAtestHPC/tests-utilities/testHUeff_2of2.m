load tempfileWS
eff=[0.70:0.0001:0.9999];
cc=[eff' zeros(length(eff),1)];
for i=1:length(eff)
% Use exact formula for finding the value of c associated to a fixed
% level of shape efficiency
cc(i,2)=TBeff(eff(i),1);
end
figure
plot(cc(:,1),cc(:,2),'LineStyle','-','LineWidth',2)
xlabel('Effciency')
ylabel('Value of c')
close all
save tempfileWS