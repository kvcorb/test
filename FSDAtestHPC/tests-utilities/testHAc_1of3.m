cc=0.15:0.05:1.2;
% BDPEFF = matrix which will contain
% 1st column = value of c
% 2nd column = breakdown point (bdp)
% 3rd column = asympotic nominal efficiency (eff)
BDPEFF=[cc' zeros(length(cc),2)];
jk=1;
for c=cc
[bdp,eff]=HAc(c,1);
BDPEFF(jk,2:end)=[bdp, eff];
jk=jk+1;
end
nr=2;
nc=1;
subplot(nr,nc,1)
plot(BDPEFF(:,1),BDPEFF(:,2))
xlabel('c','Interpreter','Latex','FontSize',16)
ylabel('Breakdown point','Interpreter','none')
subplot(nr,nc,2)
plot(BDPEFF(:,1),BDPEFF(:,3))
xlabel('c','Interpreter','Latex','FontSize',16)
ylabel('Asymptotic efficiency','Interpreter','none')
close all
save tempfileWS