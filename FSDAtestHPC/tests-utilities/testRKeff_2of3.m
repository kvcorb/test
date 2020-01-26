load tempfileWS
ef=0.75:0.01:0.99;
CC=[ef' zeros(length(ef),1)];
jk=0;
for j=ef
jk=jk+1;
CC(jk,2)=OPTeff(j,1)
end
close all
save tempfileWS