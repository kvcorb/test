load tempfileWS
numlab=struct;
% Show just the two most important residuals.
numlab.numlab={2}; 
% Set a font size for the labels equal to 20
numlab.FontSize=20;
resindexplot(randn(100,1),'numlab',numlab)
close all
save tempfileWS