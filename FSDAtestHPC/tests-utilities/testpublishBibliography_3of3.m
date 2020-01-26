load tempfileWS
% In this case output Citations contains the list of the citations
% which have been found.
[fileBiblio,Citations]=publishBibliography(FilesIncluded,OUT,'write2file',false);
disp(Citations)
close all
save tempfileWS