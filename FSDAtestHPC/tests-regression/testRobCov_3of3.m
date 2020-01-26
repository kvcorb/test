load tempfileWS
% Estimate beta using Sreg and compare the four estimators of 
% cov (\hat \beta).
XX=[0.8115    1.3104
-0.4477    0.8110
0.9438    1.9121
-0.2346    0.7058
1.8364    3.1318
0.2911    0.7837
0.3669    1.7571
0.4560    1.0876
-1.0831    0.0679
0.7018    1.0923
1.6976    2.7744
-0.0624    1.2015
0.2016    0.7747
-0.1542    1.3095
-0.9416   -0.5251
0.4873    0.8116
-0.3561    0.9261
0.5185    2.1219
-0.7674   -0.0514
0.3360    1.8620
-0.2083    1.3796
-0.1700    0.9053
1.9152    2.4369
-0.9912   -0.6885
0.5939    2.0449
-1.1842   -0.8506
1.1375    1.6184
-0.2482    1.2104
0.7936    2.2313
-0.2744    1.5259
1.1455    2.2739
-0.0637    1.2618
-0.5054    0.0536
0.7282    1.9411
-0.0703    0.8090
-1.8186   -0.8725
-2.0621   -0.5299
-1.7750   -0.7765
-0.8553   -0.3311
1.8966    2.9885
-0.1076    0.5106
0.9055    1.1283
0.3086    1.5491
-0.0487    0.4964
-1.6901   -0.7348
-0.7253    0.9436
0.2124    0.6549
-0.2748   -0.2009
-1.2804   -0.7036
0.3627    1.3027];
% Define X and y;
y=XX(:,2);
X=XX(:,1);
outS=Sreg(y,X,'rhofunc','bisquare','bdp',0.5);
outRC=RobCov(X,outS.residuals,1,'rhofunc','bisquare','bdp',0.5);
disp('covrob')
disp(outRC.covrob)
disp('covrob1')
disp(outRC.covrob1)
disp('covrob2')
disp(outRC.covrob2)
disp('covrob3')
disp(outRC.covrob3)
disp('covrob4')
disp(outRC.covrob4)
disp('covrobc')
disp(outRC.covrobc)
% plot X and y and add LS and robust regression line
plot(X,y,'o')
xlabel('X')
ylabel('y')
hLS=lsline;
hLS.Color='r';
hLS.LineStyle = ':';
hLS.LineWidth = 2;
hROB=refline([outS.beta(2) outS.beta(1)]);
hROB.LineWidth = 2;
legend({'' 'LS','Robust'},'Location','Best')
close all
save tempfileWS