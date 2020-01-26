FullPath=which('findDir');
root=FullPath(1:end-length('findDir.m')-1);
list = findDir(root)
close all
save tempfileWS