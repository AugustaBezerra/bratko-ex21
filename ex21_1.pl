% =====================================
% Exercício 21.1 - Bratko
% =====================================

% Base de conhecimento

parent(tom, ann).
parent(tom, bob).
parent(pam, liz).
parent(bob, pat).

female(ann).
female(liz).
female(pat).

male(tom).
male(bob).

% Exemplos positivos

positive(has_daughter(tom)).
positive(has_daughter(pam)).
positive(has_daughter(bob)).

% Exemplos negativos

negative(has_daughter(ann)).
negative(has_daughter(pat)).

% Hipótese aprendida

has_daughter(X) :-
    parent(X, Y),
    female(Y).

/*

Testes:

?- has_daughter(tom).
true.

?- has_daughter(pam).
true.

?- has_daughter(ann).
false.

*/