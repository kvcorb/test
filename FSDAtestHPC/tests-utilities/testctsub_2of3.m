load tempfileWS
x=sort(randn(n,1));
y=randn(n,1);
% If the third argument of ctsub is equal to the first
% argument then the output of cumtraps and ctsub is exactly the same.
res=cumtrapz(x,y);
res1=ctsub(x,y,x);
disp(max(abs(res-res1)))
close all
save tempfileWS