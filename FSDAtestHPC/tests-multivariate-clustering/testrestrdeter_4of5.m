load tempfileWS
av=abs(randn(2,5));
restr=1.6;
niini=[30;40;20;10;50];
av(:,2)=0;
a=restrdeter(av,niini,restr);
disp('Maximum value of ratio among determinants')
disp(max(prod(a))/min(prod(a)))
close all
save tempfileWS