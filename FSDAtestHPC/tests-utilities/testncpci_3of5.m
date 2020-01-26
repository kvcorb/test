load tempfileWS
prec=1e-12;
ci=ncpci(52,'X2',8,'prec',prec);
disp(['95 per cent confidence interval for the non centrality parameter'])
disp(ci)
close all
save tempfileWS