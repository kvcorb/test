load tempfileWS
close all
rho=-2;
A=[4 rho; rho 3 ];
mu=[1.5 1];
Ell=ellipse(mu,A);
patch(Ell(:,1),Ell(:,2),'y');
close all
save tempfileWS