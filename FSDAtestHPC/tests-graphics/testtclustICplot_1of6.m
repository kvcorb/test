Y=load('geyser2.txt');
% Make sure (whenever possible) that units 15, 30 and 69 are inside
% groups which have labels respectively equal to 1, 2 and 3.
UnitsSameGroup=[15 30 69];
out=tclustIC(Y,'cleanpool',false,'plots',0,'alpha',0.1,'UnitsSameGroup',UnitsSameGroup);
tclustICplot(out)
close all
save tempfileWS