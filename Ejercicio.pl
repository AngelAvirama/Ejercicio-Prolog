%Progenitores
progenitor(pedro, juan).
progenitor(maria, juan).
progenitor(juan, ana).
progenitor(juan, carlos).
progenitor(laura, ana).
progenitor(laura, carlos).

%Genero
hombre(pedro).
hombre(juan).
hombre(carlos).
mujer(maria).
mujer(laura).
mujer(ana).

%Matrimonio
casado(pedro, maria).
casado(juan, laura).

%Hermandad
hermano(juan, carlos).
hermana(ana, carlos).


%Reglas

abuelo(X, Y) :- progenitor(X, Z), progenitor(Z, Y).

abuela(X, Y) :- progenitor(X, Z), progenitor(Z, Y), mujer(X).

tio(X, Y) :- hermano(X, Z), progenitor(Z, Y).

tia(X, Y) :- hermana(X, Z), progenitor(Z, Y).

primo(X, Y) :- progenitor(A, X), progenitor(B, Y), hermano(A, B).


