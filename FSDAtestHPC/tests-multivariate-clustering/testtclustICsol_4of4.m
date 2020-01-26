load tempfileWS
Y=load('geyser2.txt');
out=tclustIC(Y,'cleanpool',false,'plots',1,'alpha',0.1,'whichIC','CLACLA')
[outCLACLCA]=tclustICsol(out,'whichIC','CLACLA','plots',0,'NumberOfBestSolutions',5,'Rand',1);
disp('Matrix of adjusted Rand indexes among the first 5 best solutions')
disp(outCLACLCA.CLACLAbsari)
[outCLACLCA]=tclustICsol(out,'whichIC','CLACLA','plots',0,'NumberOfBestSolutions',5,'Rand',0);
disp('Matrix of adjusted Fowlkes and Mallows indexes among the first 5 best solutions')
disp(outCLACLCA.CLACLAbsari)
close all
save tempfileWS