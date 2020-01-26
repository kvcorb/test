% FowlkesMallowsIndex (adjusted) with the two vectors as input.
c=[1 1;
1 2
2 1;
2 2 ;
2 2;
2 3;
3 3;
3 3;
3 3;
3 3];
% c1= numeric vector containing the labels of the first partition
c1=c(:,1);
% c1= numeric vector containing the labels of the second partition
c2=c(:,2);
FM=FowlkesMallowsIndex(c1,c2);
close all
save tempfileWS