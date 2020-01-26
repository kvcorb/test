load tempfileWS
FileNameOutput=[pwd filesep 'ysimout.txt'];
T=100;
out=simulateTS(T,'FileNameOutput',FileNameOutput);
close all
save tempfileWS