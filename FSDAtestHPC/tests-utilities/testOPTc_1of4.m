%% Breakdown vs efficiency.
%Analysis of breakdown point and asymptotic efficiency
%at the normal distribution as a function of c in regression.
c=1:0.01:4;
CC=[c' zeros(length(c),1)];
jk=0;
for j=c
jk=jk+1;
[bdp,eff]=OPTc(j,1);
CC(jk,2:3)=[bdp,eff];
end
subplot(2,1,1)
plot(c',CC(:,2))
xlabel('c','Interpreter','Latex','FontSize',16)
ylabel('Breakdown point','Interpreter','none')
subplot(2,1,2)
plot(c',CC(:,3))
xlabel('c','Interpreter','Latex','FontSize',16)
ylabel('Asymptotic efficiency','Interpreter','none')
close all
save tempfileWS