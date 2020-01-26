load tempfileWS
% The width of the text is 60 and starts in column 12.
comment=struct;
comment.commentsign='$$$';
comment.startcolumn=5;
startcolumn=12;
width=60;
if verLessThan('matlab','8.1') ==1
warning('This function uses routine strjoin and works just with Matlab >=2013a')
else
Newstr=wraptextFS(str,'comment',comment,'startcolumn',startcolumn,'width',width);
end
close all
save tempfileWS