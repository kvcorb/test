load tempfileWS
close all
figure('tag','This is a scatterplot with ouTliErs'); % case insensitive
spmplot(Ycont,group);
% If the Tag of the Figure contains the string 'group', then the
% legend identifies the groups with 'Group 1', Group 2', etc.
figure('tag','This scatterplot contains groups');
spmplot(Ycont,group,plo,'box');
% If the tag figure includes the word 'brush', the legend will identify
% one group for 'Unbrushed units' and the others for 'Brushed units 1',
% 'Brushed units 2', etc.
figure('Tag','Scatterplot with brushed units');
spmplot(Ycont,group,plo);
cascade;
close all
save tempfileWS