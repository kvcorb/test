load tempfileWS
FullPath=which('findFile');
%extract the root directory of FSDA
root=FullPath(1:strfind(FullPath,'FSDA')+3);
list = findFile(root,'InclDir','graphics','ExclFiles','res*')
close all
save tempfileWS