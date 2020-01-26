load tempfileWS
chkMatlab_With_R_connection=exist('openR','file');
if chkMatlab_With_R_connection==0
disp('Connection with R has not been setup yet')
examp=which('Connect_Matlab_with_R_HELP.m');
examp1=strrep(examp,'\','\\');
stri=['See file <a href="matlab: opentoline(' examp1 ',27)">Connect_Matlab_with_R_HELP.m</a>  for more information'];
disp(stri);
else
openR
evalR('library(actuar)');
evalR('x=seq(0,0.9999,0.0001)');
evalR('a=2');
evalR('b=3');
yfromR=evalR('qinvgamma(x,a,scale=b)');
x=(0:0.0001:0.9999);
yfromMatlab=inversegaminv(x,2,3);
disp(max(abs(yfromR-yfromMatlab)));
closeR;
end
close all
save tempfileWS