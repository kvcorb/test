load('multiple_regression.txt');
y=multiple_regression(:,4);
X=multiple_regression(:,1:3);
outLM=fitlm(X,y,'exclude','');
res=outLM.Residuals{:,3};
qqplotFS(res,'X',X,'plots',1);
title('qqplot of stud. res.')
% No outlier appears
close all
save tempfileWS