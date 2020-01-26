load tempfileWS
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
out=tclust(Y,5,0.05,1.3,'refsteps',20,'plots',1)
close all
save tempfileWS