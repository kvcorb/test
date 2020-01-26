z = peaks(100);
plot(z(:,26:5:50))
grid on;
clickableMultiLegend({'Line1','Line2','Line3','Line4','Line5'}, 'Location', 'NorthWest');
axis manual;
figure;
z = peaks(100);
plot(z(:,26:5:50))
grid on;
hlegend=clickableMultiLegend({'Line1','Line2','Line3','Line4','Line5'}, 'Location', 'NorthWest');
axis manual;
% legend(hlegend,'off');
close all
save tempfileWS