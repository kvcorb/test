load tempfileWS
FullPath=which('findDir');
root=FullPath(1:end-length('findDir.m')-1);
list = findDir(root,'InclDir','datasets')
close all
save tempfileWS