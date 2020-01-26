load tempfileWS
close all
figure('Tag','aaaaa'); spmplot(Y1); hmain=gcf;
figure('Tag','bbbbb'); spmplot(Y2);
figure('Tag',''); spmplot(Y3);
position(hmain);
close all
save tempfileWS