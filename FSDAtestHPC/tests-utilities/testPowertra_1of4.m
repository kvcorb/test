y=(1:5)';
y1=Powertra(y,0.2);
plot(y,y1)
xlabel('Original values')
ylabel('Transformed values using BoxCox')
close all
save tempfileWS