load tempfileWS
load('hawkins.txt');
y=hawkins(:,9);
X=hawkins(:,1:8);
[out]=LXS(y,X,'nsamp',10000);
[~,~,~,Bols,S2] = FSRmdr(y,X,out.bs);
if isnan(S2)
disp('NoFullRank in initial subset, please rerun FSRmdr')
else
%The forward plot of s2 shows that initially the estimate is virtually
%zero. The four line segments comprising the plot correspond to the four
%groups of observations
% Plot of the monitoring of S2 and R2
figure;
subplot(1,2,1)
plot(S2(:,1),S2(:,2))
xlabel('Subset size m');
ylabel('S2');
subplot(1,2,2)
plot(S2(:,1),S2(:,3))
xlabel('Subset size m');
ylabel('R2');
%The forward plots of the estimates of the beta coefficients show that they are virtually constant until m = 86, after which they start fluctuating in different directions.
% Plots of the monitoring of "Estimates of beta coefficients"
figure;
for j=3:size(Bols,2)
subplot(2,4,j-2)
plot(Bols(:,1),Bols(:,j))
xlabel('Subset size m');
ylabel(['b' num2str(j-2)]);
end
end
close all
save tempfileWS