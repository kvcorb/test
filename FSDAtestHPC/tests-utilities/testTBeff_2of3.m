load tempfileWS
p=200;
pp=1:1:p;
% Initialize the matrix which stores the values of c for the two
% methods
cc=[pp' zeros(p,2)];
eff=0.75;
% eff=0.99;
for i=pp
% Use exact formula for finding the value of c associated to a fixed
% level of shape efficiency
cc(i,2)=TBeff(eff,i,1);
% Use approximate formula for finding the value of c associated to a fixed
% level of shape efficiency
cc(i,3)=TBeff(eff,i,1,1);
end
figure
plot(cc(:,1),cc(:,2),'LineStyle','-','LineWidth',2)
hold('on')
plot(cc(:,1),cc(:,3),'LineStyle','-.','LineWidth',2)
legend('True value of c', 'Approximate value of c','Location','best')
xlabel('Number of variables')
ylabel('Value of c')
close all
save tempfileWS