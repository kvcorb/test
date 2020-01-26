n=100;
p=3;
X=randn(n,p);
y=100+randn(n,1);
sel=51:100;
y(sel)=y(sel)+2;
group=ones(n,1);
group(sel)=2;
[H,AX,BigAx] = gplotmatrix(X,y,group);
% The legengs are not clickable
add2yX(H,AX,BigAx)
% Now the legends become clickable
close all
save tempfileWS