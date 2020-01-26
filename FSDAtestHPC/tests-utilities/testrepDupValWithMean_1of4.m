x=[ones(5,1); 6; 7; 8.2; 8.2; 10];
% y is a vector containing any real number.
y=(1:10)';
ysmo=repDupValWithMean(x,y);
disp(['      x   '   '      y   ' '      ysmo  '])
disp([x y ysmo])
% The first 5 elements of ysmo are equal to mean(y(1:5)) because the
% corresponding elements of x share the same value.
% The elements in position 8 and 9 of ysmo are equal to mean(y([8:9]))
% because the corresponding elements of x share the same value.
% All the other elements of vector ysmo are equal to y.
close all
save tempfileWS