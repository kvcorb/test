load tempfileWS
close all
Y=load('geyser2.txt');
restrfactor=10000;
% nsamp = number of subsamples which will be extracted
nsamp=500;
out=tclust(Y,3,0.1,restrfactor,'nsamp',nsamp,'plots','ellipse');
title(['Restriction factor =' num2str(restrfactor)],'interpreter','LaTex','FontSize',18)
restrfactor=10;
out=tclust(Y,3,0.1,restrfactor,'nsamp',nsamp,'refsteps',10,'plots','ellipse');
title(['Restriction factor =' num2str(restrfactor)],'interpreter','LaTex','FontSize',18)
% trimmed k-means solution restrfactor=1
restrfactor=1;
out=tclust(Y,3,0.1,restrfactor,'nsamp',nsamp,'refsteps',10,'plots','ellipse');
title(['Restriction factor =' num2str(restrfactor) '. Trimmed k-means solution'],'interpreter','LaTex','FontSize',18)
cascade
close all
save tempfileWS