load tempfileWS
df=[1;1];
lb=[-0.965785811006555;-0.681122597105154];
nc=[0.2;0.3];
x=-2.386488889335108;
[out]=ncx2mixtcdf(x,df,lb,nc);
disp('Value of cdf using default number of integration terms and default tolerance')
disp(out)
disp('-------------------------')
tol=1e-06;
[out]=ncx2mixtcdf(x,df,lb,nc,'tol',tol);
disp(['Value of cdf using tol =' num2str(tol) ' and default integration terms'])
disp(out)
disp('-------------------------')
lim=1000000;
[out]=ncx2mixtcdf(x,df,lb,nc,'lim',lim);
disp(['Value of cdf using numb. integration terms =' num2str(lim) ' and default tolerance'])
disp(out)
disp('-------------------------')
lim=100000000;
tol=1e-13;
disp(['Value of cdf using numb. integration terms =' num2str(lim) ' and tolerance=' num2str(tol)])
disp('In this last case it takes some seconds')
[out]=ncx2mixtcdf(x,df,lb,nc, 'lim',lim, 'tol',tol);
disp(out)
close all
save tempfileWS