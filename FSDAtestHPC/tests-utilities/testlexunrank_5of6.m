load tempfileWS
all_colex = flipud(all_recolex)
% and to change from colex to lex, it is sufficient this
all_lex = fliplr(all_colex)
% all p-combinations in lexi order generated using combsFS
all_lex_combs = combsFS(1:n,p)
% the combination at Lexi position N_lex=3 is generated by lexiunrank
% in Colex position
N_lex = 3; N_colex = n_bc - N_lex ;
close all
save tempfileWS