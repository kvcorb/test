numbertotest = 8.4;
out=verLessThanFS(numbertotest);
if out == true 
disp(['current version is older than ' num2str(numbertotest)]);
else
disp(['current version is not older than ' num2str(numbertotest)]);
end
close all
save tempfileWS