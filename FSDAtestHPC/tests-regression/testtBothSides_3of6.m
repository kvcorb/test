load tempfileWS
XX=[1940 963 2215
1941 572 1334
1942 305 800
1943 272 438
1944 824 3071
1945 940 957
1946 486 934
1947 307 971
1948 1066 2257
1949 480 1451
1950 393 686
1951 176 127
1952 237 700
1953 700 1381
1954 511 1393
1955 87 363
1956 370 668
1957 448 2067
1958 819 644
1959 799 1747
1960 273 744
1961 936 1087
1962 558 1335
1963 597 1981
1964 848 627
1965 619 1099
1966 397 1532
1967 616 2086];
% Row 12 is removed from the analysis.
XX(12,:)=[];
X=XX(:,2);
y=XX(:,3);
% Call of tBothSides non linear link between X and beta.
% In this case modelfun (function which specifies the link between X and beta) and
% the vector of initial regression coefficients is specified.
% This is the spawner recruiter model. See CR for more details.
modelfun = @(beta,X) X*beta(1).*exp(-beta(2)*X);
% Initial value of beta coefficients
bini=[3; 0.0009];
% The link between X and beta is specified inside modelfun given at the end
% of the example
out=tBothSides(y, X,'modelfun',modelfun,'beta0',bini,'family','BoxCox','dispresults',true);
% Plot the original values together with estimated median regression lines
% and 90 per cent confidence interval for fitted response.
close all
plot(X,y,'o')
hold('on')
laest=out.betaout(end);
upConfInt= normBoxCox(out.yhattra+1.65*out.scale,1,laest,'inverse',true,'Jacobian',false);
lowConfInt= normBoxCox(out.yhattra-1.65*out.scale,1,laest,'inverse',true,'Jacobian',false);
[Xsor,indXsor]=sort(X);
% Plot the estimated median recruitment
plot(Xsor,out.yhat(indXsor),'r-')
% Plot the estimated 95th percentile of recruitment
plot(Xsor,upConfInt(indXsor),'r--')
% Plot the estimated 5th percentile of recruitment
plot(Xsor,lowConfInt(indXsor),'r--')
ylabel('Recruiters')
xlabel('Spawners')
close all
save tempfileWS