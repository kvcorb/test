load tempfileWS
if verLessThan('matlab','8.1') ==1
warning('This function uses routine strjoin and works just with Matlab >=2013a')
else
Newstr=wraptextFS(str,'comment',true,'startcolumn',10,'width',40,'firstline',true)
end
close all
save tempfileWS