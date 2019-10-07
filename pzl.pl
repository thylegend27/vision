mat(tallrik, absolut).
mat(bord, ejattforedra).
mat(glas, laggav).

value(X, X).

galet. % påstående q. ?- galet -> true

far(albin, bob).
far(albin, peter).
far(albin, beata).

mor(agda, albin).

farmor(X, Y) :- mor(X, Z), far(Z, Y).

% ListorIsh..

first([H|L], H).

addElement(X, []) :- true.
addElement(X, [H|T]) :-
	addElement(X, T).


% Labb?

select(X, [X|T], T).
select(X, [H|T], R) :- select(X, T, R).







% append([], L, L).
% append([H|T], L, [H|R]) :-
	% append(T, L, R).

% select(X, [X|T], T).
% select(X, [H|T], [H|R]) :- select(X, T, R).

% member(X, [X|).

% addElement(X, [], [X|[]]).
% addElement(X, [H|T], [H|NT]) :- addElement(X, T, NT).

% first(X, [X|_]).
removeLast([_], []).
removeLast([H|T], [H|R]) :- removeLast(T, R).



second([_, X], X).
second(In, X) :-
	removeLast(In, X).








%
