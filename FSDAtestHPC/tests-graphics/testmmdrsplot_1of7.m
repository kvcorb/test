load('swiss_banknotes');
Y=swiss_banknotes.data;
[fre]=unibiv(Y);
%create an initial subset with the 4 observations, which fell the smallest
%number of times outside the robust bivariate ellipses, and with the
%lowest Mahalanobis Distance.
fre=sortrows(fre,[3 4]);
m0=20;
bs=fre(1:m0,1);
[outeda]=FSMeda(Y,bs);
[out]=FSMmmdrs(Y,'bsbsteps',0,'cleanpool',0,'nsimul',80);
mmdrsplot(out)
close all
save tempfileWS