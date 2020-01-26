bdp=0.5;
% Suppose the dimension is 3
v=3;
% The constants c and M associated to a breakdown point of 50 per cent
% and an ARP of 0.05 when there are three variables are
% c=1.133183024897769 and M= 1.662300458017338
[c,M]=RKbdp(bdp,v)
close all
save tempfileWS