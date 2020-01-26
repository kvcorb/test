load tempfileWS
% Therefore the value of mdr becomes much smaller than it should be.
% Please note the dip around step m=165, which is due to entrance of the
% units of the second larger group. This trajectory just after the dip
% collapses into the trajectory which starts from the second group.
% Around steps 90-110 it is also possible to see two trajectories
% inside the bands which collaps into one around m=120. Please use
% mdrrsplot with option databrush in order to explore the units
% belonging to subset. Here we limit ourselves to notice that around m
% =180 all the units from second group are included into subset (plus
% some of group 1 given that the two groups partially overlap). Also
% notice once again the decrease in the unique trajectory of minimum
% deletion residual after m around 180 which is due to the entry of the
% units of the first smaller group.
close all
rng(2);
b1=[1 1];
b2=[1 2.6];
n1=60;
n2=150;
s1=0.1;
s2=0.1;
X1=rand(n1,1);
X2=rand(n2,1);
y1=randn(n1,1)*s1+b1(1)+b1(2)*X1;
y2=randn(n2,1)*s2+b2(1)+b2(2)*X2;
hold('on')
plot(X1,y1,'o');
plot(X2,y2,'o');
title('Two simulated regression lines')
y=[y1;y2];
X=[X1;X2];
figure
% parfor of Parallel Computing Toolbox is used (if present in current
% computer). Parallel pool is closed after the execution of the random starts
[out]=FSRmdrrs(y,X,'constr','','nsimul',100,'init',10,'plots',1,'cleanpool',true);
close all
save tempfileWS