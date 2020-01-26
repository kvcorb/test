% MDinv is a matrix which in the second column contains
% all values equal to 0.99
p=5;
MDRenv=FSRenvmdr(1000,p,'prob',0.99);
MDRinv=FSRinvmdr(MDRenv,p);
close all
save tempfileWS