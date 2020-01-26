load tempfileWS
Y=load('geyser2.txt');
out=tclustIC(Y,'cleanpool',false,'plots',1,'alpha',0.1,'whichIC','CLACLA','kk',[2 3 4 6])
[outCLACLCA]=tclustICsol(out,'whichIC','CLACLA','plots',1,'NumberOfBestSolutions',3);
close all
save tempfileWS