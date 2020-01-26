close all
Y = load('geyser2.txt');
k = 3;
% using tkmeans 
out = tkmeans(Y, k*2, 0.05, 'plots', 1);
overl_1 = overlapmap(out);
% using tkmeans for a higher number of components
out2 = tkmeans(Y, k*4, 0.05, 'plots', 1);
overl_2 = overlapmap(out2);
cascade;
close all
save tempfileWS