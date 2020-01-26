load tempfileWS
load('hawkins.txt');
y=hawkins(:,9);
X=hawkins(:,1:8);
rng('default')
rng(100)
[out]=LXS(y,X,'nsamp',10000);
[mdr,Un,BB,Bols,S2] = FSRmdr(y,X,out.bs,'bsbsteps',[30 60]);
if isnan(S2)
disp('NoFullRank in initial subset, please rerun FSRmdr')
else
% BB has just two columns
% First column contains information about units forming subset at step m=30
% sum(~isnan(BB(:,1))) is 30
% Second column contains information about units forming subset at step m=60
% sum(~isnan(BB(:,2))) is 60
disp(sum(~isnan(BB(:,1))))
disp(sum(~isnan(BB(:,2))))
end
close all
save tempfileWS