load tempfileWS
rng(100)
X = randn(20,100,3);
Y = winsor(X,p,2);
disp('Number of unique elements in second rows of first slice of 3D array X')
disp(length(unique(Y(2,:,1)')))
close all
save tempfileWS