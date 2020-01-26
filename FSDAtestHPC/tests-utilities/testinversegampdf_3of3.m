load tempfileWS
% a set of values for $\sigma^2$
x=(0:0.001:3)';
% Two panels with inverse Gamma distribution for different parameters
% settings.
% Left panel:  fixed shape (1), increasing scale (1,2,4);
% As the scale parameter increases, the mean of the distribution (more 
% and more skewed to the right) also increases. This suggests that an 
% inverse Gamma prior with a larger scale parameter incorporates a prior
% belief in favour of a larger value for $\sigma^2$.
a = [1, 1, 1]; 
b = [1, 2, 4];
subplot(1,2,1);
for j=1:3
plot(x,inversegampdf(x,a(j),b(j)));
hold on;
xlabel('x (\sigma^2)');
end
title('PDF with a=[1, 1, 1] and b=[1, 2, 4]');
% Right panel: fixed scale (1), increasing shape (1,2,4);
% As the shape parameter increases, the distribution becomes more and
% more centered around the mean, producing a tighter set of prior beliefs.   
b = [1, 1, 1]; 
a = [1, 2, 4];
subplot(1,2,2);
for j=1:3
plot(x,inversegampdf(x,a(j),b(j)));
hold on;
xlabel('x (\sigma^2)');
end
title('PDF with a=[1, 2, 4] and b=[1, 1, 1]');
close all
save tempfileWS