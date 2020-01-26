load tempfileWS
% In this code computation time is based on tic toc combined with a series
% of replications
% nn = sample size
% vv = number of variables
nn=[100 200 500 1000 5000 10000 50000 100000];
vv=[2 5 10 20];
% rep =number of replications
rep = 1000;
ttMat=nan(length(nn) , length(vv));
ttFSwithMex=ttMat;
ttFSnoMex=ttMat;
Mat=0; tMat=0;
FSwithmex=0; tFSwithMex=0;
FSnoMex=0; tFSnoMex=0;
in = 1; iv=1;
for n = nn
for v = vv
X0 = zeros(n,v);
eyed=eye(v);
for i=1:rep
X = randn(n,v);
Mu = randn(1,v);
Sigma=cov(X);
%  Matlab function mvnpdf, (black line in plot)
Mat = tic;
y0 = mvnpdf(X, Mu, Sigma);
y0=log(y0);
tMat = tMat + toc(Mat);
% logmvnpdfFS using mex file for mean deviations, (blue line in plot)
FSwithmex = tic;
yD = logmvnpdfFS(X, Mu, Sigma,X0,eyed,n,v);
tFSwithMex = tFSwithMex + toc(FSwithmex);
% logmvnpdfFS and no mex file for mean deviations. (red line in plot)
FSnoMex = tic;
yI = logmvnpdfFS(X, Mu, Sigma);
tFSnoMex = tFSnoMex + toc(FSnoMex);
if (sum(sum(abs(y0-yD))))>10^-6  || (sum(sum(abs(y0-yI)))) >10^-6
error('FSDA:logmvnpdfFS:ShouldBeEq','Difference in results: stop');
end
end
ttMat(in,iv) = tMat;
ttFSwithMex(in,iv) = tFSwithMex;
ttFSnoMex(in,iv) = tFSnoMex;
Mat=0; tMat=0;
FSwithmex=0; tFSwithMex=0;
FSnoMex=0; tFSnoMex=0;
disp(['n=' num2str(n) ' -- v=' num2str(v)]);
iv = iv+1;
end
in = in+1;
iv = 1;
end
% Plotting part
a=ver;
a=a.Release;
aa=1;
bb=8;
for ij=1:length(vv);
subplot(length(vv)/2,2,ij)
hold('on')
plot(nn(aa:bb)',ttMat(aa:bb,ij),'k');
plot(nn(aa:bb)',ttFSwithMex(aa:bb,ij),'b')
plot(nn(aa:bb)',ttFSnoMex(aa:bb,ij),'r');
if ij==1
title(['v (number of variables)=' num2str(vv(ij)) ' version' a])
else
title(['v=' num2str(vv(ij))])
end
ylabel('Seconds')
xlabel('Number of observations')
if ij==4
legend('mvnpdf','FS+mex','FS','location','NorthWest')
end
end
hold off;
close all
save tempfileWS