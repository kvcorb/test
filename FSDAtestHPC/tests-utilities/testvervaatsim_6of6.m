load tempfileWS
clear all;
close all;
% set common parameters
betav = 1;
steps = 10;
d = 3;
% ensure same random numbers in MATLAB and R 
rn = mtR(1);    
% Now compute the veervaat in MATLAB
y=vervaatsim(betav,steps,d)
% And finally compute the vervaat in R
disp('To verify coherence of results with the R implementation,');
disp('execute in R the following four lines,'); 
disp('which allow to replicate the same random numbers;');
disp('then execute the vervaat after sourcing the following R code: ') ;
disp(' ');
disp('NGkind("Mersenne-Twister") #set "Mersenne-Twister" "Inversion"');
disp('set.seed(0) ');
disp('state = .Random.seed ');
disp('runif(1) ');
disp('vervaat(beta = 1,steps = 10,d = 3) ');
disp(' ');
close all
save tempfileWS