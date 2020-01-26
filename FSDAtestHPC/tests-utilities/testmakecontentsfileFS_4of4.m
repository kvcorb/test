load tempfileWS
% Find full path of the main root where FSDA is installed
FileName='addFSDA2path';
FullPath=which(FileName);
root=FullPath(1:end-length(FileName)-3);
InclDir={'graphics' 'regression' 'multivariate' 'clustering' 'combinatorial' ...
'examples' 'utilities' 'utilities_stat'};
ExclDir={'privateFS'  'datasets'};
% Create list of folders which must have a personalized contents file
list = findDir(root,'InclDir',InclDir,'ExclDir',ExclDir)
% Crete personalized contents file for main folder of FSDA
% and required subfolders.
[out,Excluded]=makecontentsfileFS('dirpath',list,'FilterFileContent','%FScategory:','force',false)
close all
save tempfileWS