load tempfileWS
if verLessThan('matlab', '8.2.0')
warning('FSDA:logmvnpdfFS:MatlabTooOld','This example needs routine timeit which has been introduced in Matlab 2013b')
warning('FSDA:logmvnpdfFS:MatlabTooOld','You have a version of Matlab which is < 2013b and you cannot run this example')
else
% nn = sample size
% vv = number of variables
nn=[100 200 500 1000 5000 10000 50000 100000];
vv=[2 5 10 20];
ttMat=nan(length(nn) , length(vv));
ttFSwithMex=ttMat;
ttFSnoMex=ttMat;
in = 1; iv=1;
for n = nn
for v = vv
X0 = zeros(n,v);
eyed=eye(v);
X = randn(n,v);
Mu = randn(1,v);
Sigma=cov(X);
%  Matlab function mvnpdf
yMat = @() log(mvnpdf(X, Mu, Sigma));
tMat = timeit(yMat);
% logmvnpdfFS using mex file for mean deviations.
yFSwithMex = @() logmvnpdfFS(X, Mu, Sigma,X0,eyed,n,v);
tFSwithMex = timeit(yFSwithMex);
% logmvnpdfFS and no mex file for mean deviations.
yFSnoMex = @() logmvnpdfFS(X, Mu, Sigma);
tFSnoMex = timeit(yFSnoMex);
ttMat(in,iv) = tMat;
ttFSwithMex(in,iv) = tFSwithMex;
ttFSnoMex(in,iv) = tFSnoMex;
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
bb=length(nn);
for ij=1:length(vv);
subplot(length(vv)/2,2,ij)
hold('on')
plot(nn(aa:bb)',ttMat(aa:bb,ij),'k');
plot(nn(aa:bb)',ttFSwithMex(aa:bb,ij),'b')
plot(nn(aa:bb)',ttFSnoMex(aa:bb,ij),'r');
if ij==1
title(['v (number of variables) =' num2str(vv(ij)) ' version' a])
else
title(['v=' num2str(vv(ij))])
end
xlabel('Number of observations')
ylabel('Seconds')
if ij==4
legend('mvnpdf','FS+mex','FS','location','NorthWest')
end
end
hold off;
end
close all
save tempfileWS