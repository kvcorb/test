Y1=load('geyser2.txt');
Y2=load('fishery.txt');
Y3=load('M5data.txt');
figure('Tag','pl_spm'); spmplot(Y1); hmain=gcf;
figure('Tag','pl_spm'); spmplot(Y2);
figure('Tag','pl_spm'); spmplot(Y3);
position(hmain);
close all
save tempfileWS