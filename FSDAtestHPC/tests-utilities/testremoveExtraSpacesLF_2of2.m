load tempfileWS
FileWithFullPath=which('tclust');
filename=FileWithFullPath;
fileID = fopen(char(filename), 'r');
% Insert the file into fstring
fstring=fscanf(fileID,'%c');
aa=regexp(fstring,'\\\[','once') ;
bb=regexp(fstring,'\\\]','once');
str=fstring(aa-145:bb+560);
% Remove from string descri all percentage signs
posPercentageSigns=regexp(str,'%');
str(posPercentageSigns)=[];
% str is the input string containing a series of Latex equations
a=removeExtraSpacesLF(str)
close all
save tempfileWS