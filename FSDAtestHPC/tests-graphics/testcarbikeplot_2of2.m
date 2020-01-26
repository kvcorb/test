load tempfileWS
Y=load('geyser2.txt');
out=tclustIC(Y,'cleanpool',false,'plots',0,'alpha',0.1);
% Find the best solutions using as Information criterion MIXMIX
disp('Best solutions using MIXMIX')
[outMIXMIX]=tclustICsol(out,'whichIC','MIXMIX','plots',0,'NumberOfBestSolutions',6);
% Produce the car-bike plot
carbikeplot(outMIXMIX)
close all
save tempfileWS