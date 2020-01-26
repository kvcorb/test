load tempfileWS
rng('default')
rng(20)     % For reproducibility
% Define mu and Sigma
mu = [2,3];
Sigma = [1,1.5;1.5,3];
Y = mvnrnd(mu,Sigma,1000);
figure
hold on;
plot(Y(:,1),Y(:,2),'o');
% add an ellipse to these points
Ell=ellipse(mu,Sigma,0.99);
axis equal
% Count number of points inside the ellipse
disp('Number of points inside the ellipse')
disp(sum(inpolygon(Y(:,1),Y(:,2),Ell(:,1),Ell(:,2))))
close all
save tempfileWS