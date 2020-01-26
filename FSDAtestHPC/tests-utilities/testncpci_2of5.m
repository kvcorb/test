load tempfileWS
confint=0.99;
ci=ncpci(52,'X2',8,'confLevel',confint);
disp([ num2str(100*confint) ' per cent confidence interval for the non centrality parameter'])
disp(ci)
close all
save tempfileWS