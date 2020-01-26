load tempfileWS
x=[8.2; 1.0; 1.0; 6.0; 7.0; 10.0; 1.0; 8.2; 1.0; 1.0];
% y is a vector containing any real number.
y=(11:20)';
ysmo=repDupValWithMean(x,y);
disp(['      x   '   '      y   ' '      ysmo  '])
disp([x y ysmo])
% Elements 1 and 8  share the same value of x therefore
% ysmo(1)=smo(8) = mean(y([1 8])).
% Elements 2, 3, 7, 9 and 10 share the same value of x therefore
% ysmo(2)=ysmo(3)=ysmo(7)=ysmo(9)=ysmo(10)= mean(y([2 3 7 9 10])).
% All the other elements of vector ysmo are equal to y.
close all
save tempfileWS