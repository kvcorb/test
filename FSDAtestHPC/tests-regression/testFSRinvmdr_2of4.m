load tempfileWS
% In the example, the values of mdr are plotted and then transformed 
% into observed confidence levels.
% The output is plotted in normal coordinates.
load('wool.txt','wool');
y=wool(:,4);
X=wool(:,1:3);
% The line below shows the plot of mdr
[out]=FSR(y,X,'nsamp',0,'plots',1);
MDRinv=FSRinvmdr(out.mdr,size(X,2)+1,'plots',1);
close all
save tempfileWS