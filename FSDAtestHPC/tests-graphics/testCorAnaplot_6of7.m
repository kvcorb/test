load tempfileWS
N=[51	64	32	29	17	59	66	70;
53	90	78	75	22	115	117	86;
71	111	50	40	11	79	88	177;
1	7	5	5	4	9	8	5;
7	11	4	3	2	2	17	18;
7	13	12	11	11	18	19	17;
21	37	14	26	9	14	34	61;
12	35	19	6	7	21	30	28;
10	7	7	3	1	8	12	8;
4	7	7	6	2	7	6	13;
8	22	7	10	5	10	27	17;
25	45	38	38	13	48	59	52;
18	27	20	19	9	13	29	53;
35	61	29	14	12	30	63	58;
2	4	3	1	4	nan  nan	nan	  ;
2	8	2	5	2	nan  nan	nan;
1	5	4	6	3	nan  nan	nan;
3	3	1	3	4	nan  nan	nan];
% rowslab = cell containing row labels
rowslab={'money','future','unemployment','circumstances',...
'hard','economic','egoism','employment','finances',...
'war','housing','fear','health','work','comfort','disagreement',...
'world','to_live'};
% colslab = cell containing column labels
colslab={'unqualified','cep','bepc','high_school_diploma','university',...
'thirty','fifty','more_fifty'};
if verLessThan('matlab','8.2.0')==0
tableN=array2table(N,'VariableNames',colslab,'RowNames',rowslab);
% Extract just active rows
Nactive=tableN(1:14,1:5);
Nsupr=tableN(15:18,1:5);
Nsupc=tableN(1:14,6:8);
Sup=struct;
Sup.r=Nsupr;
Sup.c=Nsupc;
else
Nactive=N(1:14,1:5);
Lr=rowslab(1:14);
Lc=colslab(1:5);
Sup=struct;
Sup.r=N(15:end,1:5);
Sup.Lr=rowslab(15:end);
Sup.c=N(1:14,6:8);
Sup.Lc=colslab(6:8);
end
% Superimpose ellipses 
confellipse=struct;
% Ellipse for the first 3 row points
confellipse.selRows=1:3;
% Ellipse for selected column points using a Boolean vector
confellipse.selCols=[ false false true true false];
% Compare methods 'multinomial' and 'bootCols'
confellipse.method={'multinomial' 'bootCols'};
% Set number of simulations
confellipse.nsimul=10000;
% Set confidence interval
confellipse.conflev=0.90;
d1=3;
d2=4;
out=CorAna(Nactive,'Sup',Sup,'plots',0,'dispresults',false,'d1',d1,'d2',d2);
% Draw correspondence analysis plot with requested confidence ellipses
CorAnaplot(out,'plots',1,'confellipse',confellipse,'d1',d1,'d2',d2)
close all
save tempfileWS