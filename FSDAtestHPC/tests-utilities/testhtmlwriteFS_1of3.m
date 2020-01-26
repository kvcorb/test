NameFile='FSRmdr.m';
IPS=mreadFS(NameFile);
% Note that this function uses routine strjoin and can be used just if
% MATLAB >=2013a
if verLessThan('matlab','8.1.0')
warning('version of MATLAB greater or equal than 2013a is needed')
else
[htmlstring, laste]=htmlwriteFS(IPS);
end
close all
save tempfileWS