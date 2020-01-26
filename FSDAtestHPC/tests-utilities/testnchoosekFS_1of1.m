v = 1:50; k = 4; 
tic
for i=1:10, nchoosekFS(v,k); end
t_nchoosekFS = toc
tic
for i=1:10, nchoosek(v,k); end
t_nchoosek = toc
fprintf('nchoosekFS has been %5.2f times faster than nchoosek\n\n\n', t_nchoosek/t_nchoosekFS); 
fprintf('Try now again using k=5: in a 32 bit computer\n');
fprintf('nchoosekFS will require about the same time (in order of magnitude)\n');
fprintf('while nchoosek will start swaping into virtual memory.\n');
close all
save tempfileWS