load tempfileWS
niini=[30;40;20;10;50];
av=abs(randn(2,5));
av(:,2:3)=0;
a=restrdeter(av,niini,restr);
disp('Maximum value of ratio among determinants')
disp(max(prod(a))/min(prod(a)))
close all
save tempfileWS