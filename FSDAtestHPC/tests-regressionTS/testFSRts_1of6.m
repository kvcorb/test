rng('default')
n=200;
rng(123456);
outSIM=simulateTS(n,'plots',1);
% Uncontaminated data
y=outSIM.y;
% FSRts and LTSts on Uncontaminated data (conflev defaults differ)
[outFSRu] = FSRts(y,'plots',1);
[outLTSu] = LTSts(y,'plots',1,'conflev',0.99);
outFSRu.outliers
outLTSu.outliers'
% Contaminated data
close all
ycont=y;
ycont(10:15) = ycont(10:15)+2*mean(ycont)*sign(ycont(10:15));
% FSRts and LTSts on contaminated data (conflev defaults differ)
[outFSR] = FSRts(ycont,'plots',1);
[outLTS] = LTSts(ycont,'plots',1,'conflev',0.99);
outFSR.outliers
outLTS.outliers'
close all
save tempfileWS