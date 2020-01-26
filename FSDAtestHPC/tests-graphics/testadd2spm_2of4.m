load tempfileWS
y = randn(100,3);
group = ones(100,1); group(1:10,1) = 444; group(11:20,1) = 777;
% Make a scatterplot using gplotmatrix defaults.
% The legends automatically created are '1','444' and '777'.
[H,AX,BigAx] = gplotmatrix(y,[],group,'brk','.ox');
% with add2spm with default options, the gplotmatrix legends
% will become clickable.
add2spm(H,AX,BigAx);
% by running add2spm with option 'userleg' set to '1', and by setting
% the figure Tag to a string containing the word 'group', the clickable
% legends will become 'group 1', 'group 2' and 'group 3'.
[H,AX,BigAx] = gplotmatrix(y,[],group,'brk','.ox');
set(gcf, 'Tag', 'this is a string with group')
add2spm(H,AX,BigAx,'userleg','1');
% by running add2spm with 'userleg', {'my group 1' ; 'my group 4' ; 'my
% group 7'} the legends change as desired.
[H,AX,BigAx] = gplotmatrix(y,[],group,'brk','.ox');
add2spm(H,AX,BigAx,'userleg',{'FIAT' ; 'BMW' ; 'VOLVO'});
% Now create a group on units contaminated by outliers. By running
% add2spm with option 'userleg' set to '1', and by setting the figure
% Tag to a string containing the word 'outlier', the clickable legends
% become 'normal units' and 'outliers'. Remark: the keep the proper
% order of the legends, it is sufficient to reserve for the outlier id
% variable the largest id number.
y = randn(100,2); y(25:35,:) = y(25:35,:) + 10;
group = ones(100,1);group(25:35,1) = 5;
figure('Tag','this is a dataset with outliers');
[H,AX,BigAx] = gplotmatrix(y,[],group,'br','ox');
add2spm(H,AX,BigAx,'userleg','1');
close all
save tempfileWS