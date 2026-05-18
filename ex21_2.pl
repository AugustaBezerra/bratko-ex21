% =====================================
% Exercício 21.2 - Bratko
% =====================================

/*

Objetivo:
Determinar quantos refinement steps são necessários
para obter a hipótese alvo a partir da hipótese inicial.

Hipótese inicial:

predecessor(X,Y).

Hipótese alvo:

predecessor(A,B) :-
    parent(A,C),
    predecessor(C,B).

predecessor(D,E) :-
    parent(D,E).

*/

% =====================================
% Refinamento 1
% =====================================

% Adiciona:
% parent(A,C)

% Resultado:

step1_predecessor(A,B) :-
    parent(A,C).

% =====================================
% Refinamento 2
% =====================================

% Adiciona:
% predecessor(C,B)

% Resultado:

step2_predecessor(A,B) :-
    parent(A,C),
    predecessor(C,B).

% =====================================
% Refinamento 3
% =====================================

% Segunda regra refinada

predecessor(D,E) :-
    parent(D,E).

% =====================================
% Hipótese final
% =====================================

predecessor(A,B) :-
    parent(A,C),
    predecessor(C,B).

predecessor(D,E) :-
    parent(D,E).

/*

Resposta final:

Foram necessários 3 refinement steps
para obter a hipótese alvo.

1. parent(A,C)
2. predecessor(C,B)
3. parent(D,E)

*/

% =====================================
% Exemplo simples de base de conhecimento
% =====================================

parent(tom,bob).
parent(bob,ann).
parent(ann,liz).

/*

Exemplos de teste:

?- predecessor(tom,bob).
true.

?- predecessor(tom,ann).
true.

?- predecessor(tom,liz).
true.

*/