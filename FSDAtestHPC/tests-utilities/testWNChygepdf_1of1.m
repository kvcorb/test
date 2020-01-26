%we have 500 balls in the urn
M  = 500;   
%we extract 3 balls, one at a time, without replacement
N  = 3;     
%initially, in the urn we have 250 red and 250 white balls
K  = M/2;   
%red balls are ten times the white balls
W  = 10;    
% We compute the probability of getting 0, 1, 2 or 3 red balls in drawing
% 3 balls without replacement.
for x = 0:N
wpdf(x+1) = WNChygepdf(x,N,K,M,W);
end
disp('We have an urn with 2 groups of balls;');
disp('There are 250 balls in each group;');
disp('But the probability of getting a ball of one type is 10 times that of the other type;');
disp('Then:');
disp('    the probability of getting 0, or 1, or 2, or 3 balls');
disp('    of the first type in 3 (weighted) drawns is respectively:');
disp(wpdf);
close all
save tempfileWS