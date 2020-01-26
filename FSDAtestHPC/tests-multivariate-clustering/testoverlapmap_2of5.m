load tempfileWS
close all
rng('default') 
rng(2)
Y=load('M5data.txt');
gscatter(Y(:,1),Y(:,2), Y(:,3))
k = 3;
out = tkmeans(Y(:,1:2), k*5, 0.2, 'plots', 'ellipse', 'Ysave', true);
overl = overlapmap(out, 'omegaStar', 0.025, 'plots', 'contour', 'userColors', winter);
rng('default') 
if verLessThan('matlab', '8.5')
rng(5)
else
rng(1)
end
out_2 = tclust(Y(:,1:2), k*2, 0.2, 1, 'plots', 'contourf', 'Ysave', true);
overl_2 = overlapmap(out_2, 'omegaStar', 0.0025, 'plots', 'contourf', 'userColors', summer);
cascade;
close all
save tempfileWS