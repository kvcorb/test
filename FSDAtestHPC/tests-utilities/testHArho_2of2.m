load tempfileWS
% Hampel rho function using a redescending slope of -1/3. 
x=-9:0.1:9;
rhoHA=HArho(x,[1,1.5,3.5,8]);
plot(x,rhoHA)
xlabel('x','Interpreter','Latex')
ylabel(' Hampel $\rho(x) $','Interpreter','Latex')
close all
save tempfileWS