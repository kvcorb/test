load fisheriris;
Y=meas;
Mu=grpstats(Y,species);
S=zeros(4,4,3);
S(:,:,1)=cov(Y(1:50,:));
S(:,:,2)=cov(Y(51:100,:));
S(:,:,3)=cov(Y(101:150,:));
pigen=ones(3,1)/3;
k=3;
p=4;
[OmegaMap, BarOmega, MaxOmega, StdOmega, rcMax]=overlap(k,p,pigen,Mu,S)
disp('OmegaMap= k-by-k matrix which contains misclassification probabilities')
disp(OmegaMap);
disp('Average overlap')
disp(BarOmega)
disp('Maximum overlap')
disp(MaxOmega)
disp('Groups with maximum overlap')
disp(rcMax)
close all
save tempfileWS