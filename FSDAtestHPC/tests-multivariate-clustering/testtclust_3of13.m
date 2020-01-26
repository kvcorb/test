load tempfileWS
Y=load('geyser2.txt');
nsamp=20;
[out,MatrixContSubsets]=tclust(Y,3,0.1,10000,'nsamp',nsamp);
% MatrixContSubsets is a matrix containing in the rows the indexes of
% the nsamp subsets which have been extracted
close all
save tempfileWS