load tempfileWS
% At the end this file will be deleted.
name='repDupValWithMeanLoop.m';
filetmpID=fopen([pwd filesep name],'w');
% % The implementation of this function using loops is given below.
%     function  ysmoC=repDupValWithMeanLoop(x,y)
%     n=length(x);
%     ysmoC=y;
%     j0=1;
%     salta=0;
%     for j=1:n-1
%         if salta==0
%             sm=ysmoC(j);
%         end
%         if x(j+1) <=x(j)
%             sm=sm+ysmoC(j+1);
%             salta=1;
%             if j==n-1
%                 sm=sm/(j-j0+2);
%                 ysmoC(j0:j+1)=sm;
%             end
%         else
%             salta=0;
%             sm=sm/(j-j0+1);
%             ysmoC(j0:j)=sm;
%             j0=j+1;
%         end
%     end
%     end
%
% In principle one should take the above function and save it in a file
% In order to speed up thing we put it inside variable outstring and write
% the content of outstring into a file.
outstring=sprintf(['function  ysmoC=repDupValWithMeanLoop(x,y) \r' ...
'n=length(x); \r' ...
' ysmoC=y; \r' ...
'j0=1;     \r' ...
'salta=0;      \r' ...
'for j=1:n-1     \r' ...
'    if salta==0  \r' ...
'        sm=ysmoC(j); \r' ...
'    end               \r ' ...
'    if x(j+1) <=x(j)   \r' ...
'       sm=sm+ysmoC(j+1);   \r' ...
'        salta=1;          \r ' ...
'        if j==n-1          \r' ...
'            sm=sm/(j-j0+2); \r' ...
'            ysmoC(j0:j+1)=sm; \r' ...
'        end                    \r' ...
'    else                       \r' ...
'        salta=0;               \r' ...
'        sm=sm/(j-j0+1);       \r ' ...
'        ysmoC(j0:j)=sm;       \r ' ...
'        j0=j+1;               \r ' ...
'    end                        \r' ...
'end                            \r' ...
'end']);
fprintf(filetmpID,'%s',outstring);
fclose(filetmpID);
% Simulation study to compare the two implementations.
nsimul=10000;
n=10000;
imax=20;
totimeOpt2=0;
totimeOpt3=0;
for j=1:nsimul
x=randi(imax,n,1);
y=randn(n,1);
x=sort(x);
tic
ysmo2=repDupValWithMean(x,y);
totimeOpt2=toc+totimeOpt2;
tic
ysmo3=repDupValWithMeanLoop(x,y);
totimeOpt3=toc+totimeOpt3;
% Check that the two implementations produce the same results.
if max(abs(ysmo2-ysmo3))>1e-9
error('The two implementations do not produCe equal results')
end
end
disp('Comparison of times based on 10000 replicates')
disp('Implementation without loops')
disp(totimeOpt2)
disp('Implementation using loops')
disp(totimeOpt3)
% Remove temporary file repDupValWithMeanLoop.m
delete repDupValWithMeanLoop.m
close all
save tempfileWS