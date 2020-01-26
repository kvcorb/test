FullPath=which('findFile');
%extract the directory containing findFile.m
root=fileparts(FullPath);
%list the content of the directory containing findFile.m
list = findFile(root)
close all
save tempfileWS