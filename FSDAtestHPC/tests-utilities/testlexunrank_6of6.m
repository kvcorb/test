load tempfileWS
kcomb = lexunrank(n,p,N_colex,pascal(n))
% This is without Pascal matrix
kcomb2 = lexunrank(n,p,N_colex)
% Just as confirmation, the combination in the lexi order is
all_lex_combs(N_lex,:)
close all
save tempfileWS