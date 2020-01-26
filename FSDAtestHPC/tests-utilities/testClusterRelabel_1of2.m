Y=load('geyser2.txt');
% A small number of subsamples just to show whow the procedure works.
nsamp=10;
out=tclustIC(Y,'cleanpool',false,'plots',1,'nsamp',10,'whichIC','CLACLA')
% Make sure that units [23 54] are whenever possible respectively in
% cluster 1 and 2
UnitsSameGroup=[23 54];
IDXCLAnew=ClusterRelabel(out.IDXCLA,UnitsSameGroup);
close all
save tempfileWS