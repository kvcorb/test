load tempfileWS
close all
rho=-2;
A=[4 rho; rho 3 ];
mu=[1.5 1];
Color=[0 0 1];
ellipse(mu,A,[],Color);
close all
save tempfileWS