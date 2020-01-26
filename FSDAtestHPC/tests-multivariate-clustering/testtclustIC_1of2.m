Y=load('geyser2.txt');
out=tclustIC(Y,'cleanpool',false,'plots',1,'alpha',0.1);
% Write out.MIXMIX as MATLAB table
disp('MIXMIX (BIC)')
if verLessThan ('matlab','8.2.0');
VariableNames={'c_1'; 'c_2'; 'c_4'; 'c_8'; 'c_16'; 'c_32'; 'c_64'; 'c_128'};
disp(VariableNames')
disp(out.MIXMIX)
disp('Rows refers to k (number of groups')
else
RowNames=cellstr([repmat('k=',length(out.kk),1) num2str(out.kk')]);
VariableNames=matlab.lang.makeValidName(cellstr([repmat('c=',length(out.cc),1) num2str(out.cc')]));
disp(array2table(out.MIXMIX,'VariableNames',VariableNames','RowNames',RowNames))
end
% Find smallest value inside the table and write the corresponding
% values of k (number of groups) and c (restriction factor)
[valmin,indk]=min(out.MIXMIX);
[minIC,indc]=min(valmin);
disp(['Smallest value of IC is ' num2str(minIC) ' and takes place for'])
disp(['k=' num2str(out.kk(indk(indc))) ' and  c=' num2str(out.cc(indc))]);
close all
save tempfileWS