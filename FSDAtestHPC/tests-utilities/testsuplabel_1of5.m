n=200;
p=3;
state1=123498;
randn('state', state1);
X=randn(n,p);
gplotmatrix(X);
% Add a common label on the x axis
[ax1,h1]=suplabel('super X label');
% Add a common label on the y axis
[ax2,h2]=suplabel('super Y label','y');
% Add a common label on the y axis
[ax3,h2]=suplabel('super Y label (right)','yy');
% Add a common label on top of the plot
[ax4,h3]=suplabel('super Title'  ,'t');
% set the fontsize of the string on top of the plot
set(h3,'FontSize',30);
close all
save tempfileWS