load tempfileWS
close all;
% 'labeladd' is set to '1' to add labels found in the UserData
% property of the last group in each panel of the scatter matrix.
% It can be retrieved from H(1,end,end) (i.e. first row, last column,
% last group of the scatter matrix handles).
y = rand(100,3);
group = ones(100,1); group(1:5,1) = 5; group(10:15,1) = 10;
[H,AX,BigAx] = gplotmatrix(y,[],group,'brk','.ox');
% column vector of labels is set to the integers from 1 to size of last
% data group
labels = (1:numel(get(H(1,end,end),'YData')))';
% assign labels to the 'UserData' property of the last data group
set(H(:,:,1), 'UserData' , labels);
% try add2spm with 'labeladd' option set to '1'
add2spm(H,AX,BigAx,'labeladd','1');
close all
save tempfileWS