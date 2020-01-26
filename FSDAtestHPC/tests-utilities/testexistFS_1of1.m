out=existFS('DfM');
if out == true
disp('Mex file exists');
else
disp('Mex file does not exist');
end
close all
save tempfileWS