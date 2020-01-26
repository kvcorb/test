close all;
% create two figures, rescale and position them
hfigl = figure; plot(sin(rand(10,1)),'r'); title('goes on left');
hfigr = figure; plot(cos(rand(10,1)),'b'); title('goes on right');
upperfracpos(hfigl , hfigr , 0.5);
% now rescale the figures to a smaller proportion
upperfracpos(hfigl , hfigr , 0.2);
% this is just to bring the rescaled figures in the screen foreground
figure(hfigl); figure(hfigr);
close all
save tempfileWS