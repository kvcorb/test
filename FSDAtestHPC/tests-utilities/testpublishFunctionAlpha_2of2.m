load tempfileWS
% Create contents file for each .m file
% findDir with optional arguments 'InclDir' and 'ExclDir'.
FileName='addFSDA2path';
FullPath=which(FileName);
FSDAroot=FullPath(1:end-length(FileName)-3);
InclDir={'graphics' 'regression' 'multivariate' 'clustering' 'combinatorial' ...
'examples' 'utilities' 'utilities_stat'};
ExclDir={'privateFS'  'datasets'};
list = findDir(FSDAroot,'InclDir',InclDir,'ExclDir',ExclDir)
out=makecontentsfileFS('dirpath',list,'FilterFileContent','%FScategory','force',false);
cd(fileparts(which('docsearchFS.m')))
% Create HTML file containing alphabetical list of functions
fstring=publishFunctionAlpha(out,'CreateTxtFile',true);
% open outfile txt in web browser
FileWithFullPath=which('docsearchFS.m');
[pathFSDAstr]=fileparts(FileWithFullPath);
fsep=filesep;
outputOFHtmlHelpFile=[FSDAroot fsep 'helpfiles' fsep 'FSDA\function-alpha.txt'];
web(outputOFHtmlHelpFile,'-browser');
close all
save tempfileWS