load tempfileWS
[ARI,RI,MI,HI]=RandIndexFS(c1,c2);
disp('Adjusted Rand index')
disp(ARI)
disp('Rand index (RI)')
disp(RI)
disp('Mirkin index = 1-RI')
disp(MI)
disp('Hubert index = RI-MI ')
disp(HI)
close all
save tempfileWS