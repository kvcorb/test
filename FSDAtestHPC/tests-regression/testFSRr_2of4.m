load tempfileWS
n=200; p=1;
X = rand(n,p);
y = X + 0.01*randn(n,1);
% contaminated data points
ycont = y;
ycont(1:8) = ycont(1:8)+0.05;
[out1 , xnew1 , ypred1, yci1] = ...
FSRr(ycont,X,'alpha',0.01,...
'fullreweight',true ,'plotsPI',1,'plots',0);
h1 = allchild(gca); a1 = gca; f1 = gcf;
[out2 , xnew2 , ypred2, yci2] = ...
FSRr(ycont,X,'alpha',0.01,'R2th',0.95,...
'fullreweight',true ,'plotsPI',1,'plots',0);
h2 = allchild(gca); a2 = gca; f2 = gcf;
% move the figure above into a single one with two panels
figure; ax1 = subplot(2,1,1); ax2 = subplot(2,1,2);
copyobj(h1,ax1); title(ax1,get(get(a1,'title'),'string'));
copyobj(h2,ax2); title(ax2,get(get(a2,'title'),'string'));
close(f1); close(f2);
disp(['Outliers without R2 adjustment = ' num2str(out1.outliersr)]);
disp(['Outliers with    R2 adjustment = ' num2str(out2.outliersr)]);
close all
save tempfileWS