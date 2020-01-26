load tempfileWS
if verLessThan('matlab','8.1') ==1
warning('This function uses routine strjoin and works just with Matlab >=2013a')
else
out=xmlreadFS('tclust');
ii=2;
startcolumnEx=5;
endcolumn=60;
Ex=out.Ex;
comment=struct;
comment.commentsign='%';
comment.startcolumn=startcolumnEx;
endcolumnEx=60;
i=2; jj=3;
Exi=strtrim(Ex{i,jj});
Exi{3,1}='%                        This is an example with extra spaces on the left which are trimmed';
Exi{10,1}='for i=1:10';
Exi{11,1}='    disp(i)';  
% In this case the extra space on the left is wanted and it is not deleted
Exi{12,1}='end';
Eximod=Exi;
for ii=1:size(Exi,1)
% We must check whether it is comment or not
% If it is a comment if the first character is symbol %
Exii=Exi{ii,1};
if ~isempty(Exii)
if strcmp(Exii(1),'%')
% In this case strtrim is invoked inside wraptextFS (code is
% false)
descriFormatted=wraptextFS( Exii(2:end),'startcolumn',startcolumnEx,'endcolumn',endcolumn,'firstline',false,'comment',comment,'code',false);
else
descriFormatted=wraptextFS( Exii,'startcolumn',startcolumnEx,'endcolumn',endcolumnEx,'firstline',false,'comment',false,'code',true);
end
end
Eximod{ii,1}=descriFormatted;
end
% Before formatting
disp(Exi)
% After formatting
disp([Eximod{:}])
end
close all
save tempfileWS