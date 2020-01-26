load tempfileWS
numlab=struct;
% Set a font size for the labels equal to 20
numlab.FontSize=20;
resindexplot(randn(100,1),'numlab',numlab)
close all
save tempfileWS