load tempfileWS
n=100;
p=2;
X=randn(n,p);
y=100+randn(n,1);
sel=51:100;
y(sel)=y(sel)+2;
group=ones(n,1);
group(sel)=2;
% Control scale of the x axes
xlimx=[-1 4];
% Control scale of the y axis
ylimy=[99 101];
% Personalized labels for the x axes
nameX={'one' 'two'};
% Personalized labels for y axis
namey='Response';
yXplot(y,X,'group',group,'xlimx',xlimx,'ylimy',ylimy,'namey',namey,'nameX',nameX);
close all
save tempfileWS