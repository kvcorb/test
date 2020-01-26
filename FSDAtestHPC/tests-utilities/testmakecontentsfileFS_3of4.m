load tempfileWS
FileName='addFSDA2path';
FullPath=which(FileName);
FSDAroot=FullPath(1:end-length(FileName)-3);
dirpathsel=[FSDAroot filesep 'utilities'];
%  Note that force is false and therefore just output cell is created.
out=makecontentsfileFS('dirpath',dirpathsel,'FilterFileContent','%FScategory:','force',false)
close all
save tempfileWS