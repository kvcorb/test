load tempfileWS
FileName='addFSDA2path';
FullPath=which(FileName);
root=FullPath(1:end-length(FileName)-3);
InclDir={'graphics' 'regression' 'multivariate' 'clustering' 'combinatorial' ...
'examples' 'utilities' 'utilities_stat'};
ExclDir={'privateFS'  'datasets'};
list = findDir(root,'InclDir',InclDir,'ExclDir',ExclDir)
close all
save tempfileWS