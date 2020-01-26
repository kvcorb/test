load tempfileWS
if verLessThan('matlab','8.1') ==1
warning('This function uses routine strjoin and works just with Matlab >=2013a')
else
startcolumn=10;
cms = get(0,'CommandWindowSize');
width = cms(1)-10;
Newstr=wraptextFS(str,'comment',false,'startcolumn',startcolumn,'width',width)
end
close all
save tempfileWS