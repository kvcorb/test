load tempfileWS
FullPath=which('addFSDA2path');
%extract the root directory of FSDA
root=fileparts(FullPath);
%list the content of the directory under FSDA named 'graphics'
list = findFile(root,'InclDir','graphics')
close all
save tempfileWS