load tempfileWS
rng(100,'twister')
n1=100;
n2=80;
n3=50;
n4=80;
n5=70;
v=5;
Y1=randn(n1,v)+5;
Y2=randn(n2,v)+3;
Y3=rand(n3,v)-2;
Y4=rand(n4,v)+2;
Y5=rand(n5,v);
group=ones(n1+n2+n3+n4+n5,1);
group(n1+1:n1+n2)=2;
group(n1+n2+1:n1+n2+n3)=3;
group(n1+n2+n3+1:n1+n2+n3+n4)=4;
group(n1+n2+n3+n4+1:n1+n2+n3+n4+n5)=5;
close all
Y=[Y1;Y2;Y3;Y4;Y5];
n=size(Y,1);
% Set number of groups
k=5;
% Example of the subsets precalculated
nsamp=2000;
nsampscalar=nsamp;
nsamp=subsets(nsamp,n,(v+1)*k);
% Random numbers to compute proportions computed once and for all
RandNumbForNini=rand(k,nsampscalar);
% The allocation is shown on the space of the first two principal
% components
out=tclusteda(Y,k,[],6,'plots',1,'RandNumbForNini',RandNumbForNini,'nsamp',nsamp);
close all
save tempfileWS