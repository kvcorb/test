load tempfileWS
% We assume that path outputPath exist and that inside this path there
% is template file
outputPath='C:\temp';
fileBiblio=publishBibliography(FilesIncluded,OUT,'outputDir',outputPath,'write2file',false);
close all
save tempfileWS