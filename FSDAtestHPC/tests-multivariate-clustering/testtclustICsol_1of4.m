Y=load('geyser2.txt');
out=tclustIC(Y,'cleanpool',false,'plots',0,'alpha',0.1);
% Plot first two best solutions using as Information criterion MIXMIX
disp('Best solutions using MIXMIX')
[outMIXMIX]=tclustICsol(out,'whichIC','MIXMIX','plots',1,'NumberOfBestSolutions',2);
disp(outMIXMIX.MIXMIXbs)
close all
save tempfileWS