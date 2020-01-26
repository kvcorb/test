% The input string is extracted from the head of the FSDA function tclust.m.
FileWithFullPath=which('tclust');
filename=FileWithFullPath;
fileID = fopen(char(filename), 'r');
fstring=fscanf(fileID,'%c');
% Starting and ending lines
aa=regexp(fstring,'tclust partitions the points') ;
bb=regexp(fstring,'constrained, Mahalanobis distances\.');
% String
str=fstring(aa:bb+35);
% Remove from string all percentage signs
posPercentageSigns=regexp(str,'%');
str(posPercentageSigns)=[];
str=[str 'x0ANow some wanted line feeds: x0A first item;   x0A   second item.'];
str=regexprep(str,'x0A','\x0A');
% Remove unnecessary spaces and extra line feeds from str but just keep
% line break if before there was ':' or ';' or '.'
a=removeExtraSpacesLF(str)
close all
save tempfileWS