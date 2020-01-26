close all
load fisheriris;
plo=struct;
plo.nameY={'SL','SW','PL','PW'};
figure;
spmplot(meas,species,plo,'hist');
close all
save tempfileWS