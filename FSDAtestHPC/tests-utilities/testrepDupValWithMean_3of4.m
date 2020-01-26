load tempfileWS
x=[8.2; 1.0; 1.0; 6.0; 7.0; 10.0; 1.0; 1.0; 1.0; 8.2];
% y is a vector containing any real number.
y=(11:20)';
ysmo=repDupValWithMean(x,y,true);
disp(['      x   '   '      y   ' '      ysmo  '])
disp([x y ysmo])
% Elements 2 and 3 of x are equal and consecutive therefore
% ysmo(2)=ysmo(3) = mean(y([2 3])).
% Elements 7, 8 and 9 of x are equal and consecutive therefore
% ysmo(7)=ysmo(8)=ysmo(9) = mean(y([7 8 9])).
% All the other elements of vector ysmo are equal to y.
close all
save tempfileWS