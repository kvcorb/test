v=2;
% 3 groups
k=3;
models={'VVE','EVE','VVV','EVV','VEE','EEE','VEV','EEV','VVI',...
'EVI','VEI','EEI','VII','EII'};
% Specify the colors for the ellipses
col='rbk';
% if withseed is true the same plot is always obtained otherwise every time
% a different plot is obtained
withseed=true;
close all
% These numbers are those which better exemplify the caractheristics of the
% 14 specifications.
seeds=[100 20 12 209 51 6 76 8 9 22 11 12 130 14];
for j=1:length(models)
if withseed==true
rng(seeds(j))
end
modeltype=models{j};
S=genSigmaGPCM(v, k, modeltype);
subplot(4,4,j)
hold('on')
for i=1:k
ellipse(zeros(v,1), S(:,:,i),0.95,col(i));
end
axis equal
legend('off')
title(modeltype)
end
close all
save tempfileWS