% LXS with optional arguments.
    % Compute LMS estimator, reweight and plot the residuals.
    n=200;
    p=3;
    randn('state', 123456);
    X=randn(n,p);
    y=randn(n,1);
    y(1:5)=y(1:5)+6;
    [out]=LXS(y,X,'rew',1,'plots',1);