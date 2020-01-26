load tempfileWS
kk=2:0.1:6;
% BDPEFF = matrix which will contain
% 1st column = value of k
% 2nd column = breakdown point (bdp)
% 3rd column = asympotic nominal efficiency (eff)
% 4th column = value of parameter A
% 5th column = value of parameter B
% 6th column = value of parameter d
BDPEFF=[kk' zeros(length(kk),5)];
% Fixed value of c which must be used
cdef=2.2;
jk=1;
for k=kk
[bdp,eff,A,B,d]=HYPk(k,1,'c',cdef);
BDPEFF(jk,2:end)=[bdp, eff, A, B, d];
jk=jk+1;
end
nr=2;
nc=2;
subplot(nr,nc,1)
plot(BDPEFF(:,1),BDPEFF(:,2))
xlabel('k=sup CVC','Interpreter','Latex','FontSize',16)
ylabel('Breakdown point','Interpreter','none')
subplot(nr,nc,2)
plot(BDPEFF(:,1),BDPEFF(:,3))
xlabel('k=sup CVC','Interpreter','Latex','FontSize',16)
ylabel('Asymptotic efficiency','Interpreter','none')
subplot(nr,nc,3)
plot(BDPEFF(:,1),BDPEFF(:,4:5))
xlabel('k=sup CVC','Interpreter','Latex','FontSize',16)
ylabel('A and B','Interpreter','none')
subplot(nr,nc,4)
plot(BDPEFF(:,1),BDPEFF(:,6))
xlabel('k=sup CVC','Interpreter','Latex','FontSize',16)
ylabel('d','Interpreter','none')
suplabel(['Constant c=' num2str(cdef)],'t');
close all
save tempfileWS